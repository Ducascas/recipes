import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';
import 'package:recipes_app/presentation/screens/widgets/recipe_animated_card.dart';

class RecipesListScreen extends StatefulWidget {
  const RecipesListScreen({super.key});

  @override
  State<RecipesListScreen> createState() => _RecipesListScreenState();
}

class _RecipesListScreenState extends State<RecipesListScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Рецепты')),

      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () => context.read<RecipesCubit>().loadRecipes(),
              child: BlocBuilder<RecipesCubit, RecipesState>(
                builder: (context, state) {
                  return state.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (msg) => Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 12,
                        children: [
                          Text(msg),
                          ElevatedButton(
                            onPressed: () =>
                                context.read<RecipesCubit>().loadRecipes(),
                            child: const Text('Повторить'),
                          ),
                        ],
                      ),
                    ),
                    loaded: (visibleRecipes, hasMorePages, isOffline) {
                      final cubit = context.read<RecipesCubit>();
                      List<Recipe> list = visibleRecipes;

                      final limited = list
                          .take(cubit.currentItemLimit)
                          .toList();
                      final hasMorePages = limited.length < list.length;

                      return NotificationListener<ScrollNotification>(
                        onNotification: (scroll) {
                          if (scroll.metrics.pixels >=
                                  scroll.metrics.maxScrollExtent - 200 &&
                              hasMorePages) {
                            cubit.loadNextItems();
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
            ),
          ),
        ],
      ),
    );
  }
}
