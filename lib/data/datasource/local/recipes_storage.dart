import 'dart:convert';

import 'package:recipes_app/data/datasource/local/base_storage.dart';
import 'package:recipes_app/data/models/news.dart';

class RecipesStorage extends BaseStorage {
  static const _recipesKey = 'recipes_cache';

  Future<void> save(List<Recipe> recipes) async {
    final prefs = await sharedPreferences;

    final jsonString = jsonEncode({
      "news": recipes.map((e) => e.toJson()).toList(),
    });

    await prefs.setString(_recipesKey, jsonString);
  }

  Future<List<Recipe>> load() async {
    final prefs = await sharedPreferences;
    final jsonString = prefs.getString(_recipesKey);

    if (jsonString == null) return [];

    final decoded = jsonDecode(jsonString);
    final news = News.fromJson(decoded);

    return news.news;
  }
}
