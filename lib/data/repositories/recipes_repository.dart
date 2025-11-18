import 'dart:developer';

import 'package:recipes_app/data/datasource/local/recipes_storage.dart';
import 'package:recipes_app/data/datasource/remote/recipes_api.dart';
import 'package:recipes_app/data/models/news.dart';

class RecipesRepository {
  final RecipesApi recipesApi;
  final RecipesStorage recipesStorage;

  RecipesRepository(this.recipesApi, this.recipesStorage);

  Future<List<Recipe>> getRecipesApi() async {
    final recipesList = await recipesApi.getRecipes();
    await recipesStorage.save(recipesList);

    return recipesList;
  }

  Future<List<Recipe>> getRecipesCache() async => await recipesStorage.load();
}
