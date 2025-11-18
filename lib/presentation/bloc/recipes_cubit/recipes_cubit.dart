import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/data/repositories/recipes_repository.dart';
import 'package:recipes_app/presentation/bloc/recipes_cubit/recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  final RecipesRepository recipesRepository;

  RecipesCubit(this.recipesRepository) : super(const RecipesState.loading());

  static const int itemsPerPage = 10;
  List<Recipe> allRecipes = [];
  List<Recipe> visibleRecipes = [];
  int currentItemLimit = itemsPerPage;
  bool isOfflineMode = false;

  Future<void> loadRecipes() async {
    emit(const RecipesState.loading());

    try {
      final recipesList = await recipesRepository.getRecipesApi();

      isOfflineMode = false;

      allRecipes = recipesList;
      visibleRecipes = recipesList.take(itemsPerPage).toList();

      emit(
        RecipesState.loaded(
          visibleRecipes: visibleRecipes,
          hasMorePages: visibleRecipes.length < allRecipes.length,
          isOffline: false,
        ),
      );
    } catch (e) {
      final cachedList = await recipesRepository.getRecipesCache();

      if (cachedList.isEmpty) {
        emit(RecipesState.error('Нет данных: $e'));
        return;
      }

      isOfflineMode = true;
      allRecipes = cachedList;
      visibleRecipes = cachedList.take(itemsPerPage).toList();

      emit(
        RecipesState.loaded(
          visibleRecipes: visibleRecipes,
          hasMorePages: visibleRecipes.length < allRecipes.length,
          isOffline: true,
        ),
      );
    }
  }

  void loadNextItems() {
    if (visibleRecipes.length >= allRecipes.length) return;

    currentItemLimit += itemsPerPage;

    visibleRecipes = allRecipes.take(currentItemLimit).toList();

    emit(
      RecipesState.loaded(
        visibleRecipes: visibleRecipes,
        hasMorePages: visibleRecipes.length < allRecipes.length,
        isOffline: isOfflineMode,
      ),
    );
  }
}
