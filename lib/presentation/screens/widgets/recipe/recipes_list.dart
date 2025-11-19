import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/services/parse_min.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';
import 'package:recipes_app/presentation/screens/widgets/widgets.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<RecipesCubit>().loadRecipes(),
      child: BlocBuilder<RecipesCubit, RecipesState>(
        builder: (context, state) {
          return state.when(
            loading: () => _LoadingIndicator(),
            error: (errorText) => _ErrorButton(errorText: errorText),
            loaded: (visibleRecipes, hasMorePages, isOffline) {
              final recipesCubit = context.read<RecipesCubit>();
              final filterState = context.watch<FilterCubit>().state;
              final searchState = context.watch<SearchCubit>().state;

              List<Recipe> list = recipesCubit.allRecipes;

              if (searchState.isNotEmpty) {
                final query = searchState.toLowerCase();

                list = list.where((recipe) {
                  final titleMatch = recipe.title.toLowerCase().contains(query);

                  final ingredientsOneMatch = recipe.ingredientsOne.any(
                    (i) =>
                        i.title.toLowerCase().contains(query) ||
                        i.text.toLowerCase().contains(query),
                  );

                  final ingredientsTwoMatch = recipe.ingredientsTwo.any(
                    (i) =>
                        i.title.toLowerCase().contains(query) ||
                        i.text.toLowerCase().contains(query),
                  );

                  return titleMatch ||
                      ingredientsOneMatch ||
                      ingredientsTwoMatch;
                }).toList();
              }

              if (filterState.imageType == ImageFilterType.withImage) {
                list = list.where((r) => r.image.isNotEmpty).toList();
              }
              if (filterState.imageType == ImageFilterType.withoutImage) {
                list = list.where((r) => r.image.isEmpty).toList();
              }

              if (filterState.maxMinutes != null) {
                list = list.where((r) {
                  final minutes = parseMinutes(r.prepTime);
                  return minutes != null && minutes <= filterState.maxMinutes!;
                }).toList();
              }

              final limited = list.take(recipesCubit.currentItemLimit).toList();
              final hasMorePages = limited.length < list.length;

              return NotificationListener<ScrollNotification>(
                onNotification: (scroll) {
                  if (scroll.metrics.pixels >=
                          scroll.metrics.maxScrollExtent - 200 &&
                      hasMorePages) {
                    recipesCubit.loadNextItems();
                  }
                  return false;
                },
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  itemCount: limited.length,
                  itemBuilder: (_, i) =>
                      RecipeAnimatedCard(recipe: limited[i], index: i),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _ErrorButton extends StatelessWidget {
  const _ErrorButton({required this.errorText});

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$errorText'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => context.read<RecipesCubit>().loadRecipes(),
            child: const Text('Повторить'),
          ),
        ],
      ),
    );
  }
}
