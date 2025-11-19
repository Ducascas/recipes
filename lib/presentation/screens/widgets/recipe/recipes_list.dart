import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';
import 'package:recipes_app/presentation/screens/widgets/widgets.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    final recipesCubit = context.read<RecipesCubit>();

    return RefreshIndicator(
      onRefresh: () => context.read<RecipesCubit>().loadRecipes(),
      child: BlocBuilder<RecipesCubit, RecipesState>(
        builder: (context, state) {
          return state.when(
            loading: () => _LoadingIndicator(),
            error: (errorText) => _ErrorButton(errorText: errorText),
            loaded: (visibleRecipes, hasMorePages, isOffline) {
              return BlocBuilder<RecipesFilterCubit, List<Recipe>>(
                builder: (context, filteredRecipes) {
                  final limited = filteredRecipes
                      .take(recipesCubit.currentItemLimit)
                      .toList();

                  final hasMorePages = limited.length < filteredRecipes.length;

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
