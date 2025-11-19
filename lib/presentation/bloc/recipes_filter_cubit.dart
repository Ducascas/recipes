import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/core/services/parse_min.dart';
import 'package:recipes_app/data/models/news.dart';
import 'package:recipes_app/presentation/bloc/bloc.dart';

class RecipesFilterCubit extends Cubit<List<Recipe>> {
  final RecipesCubit recipesCubit;
  final SearchCubit searchCubit;
  final FilterCubit filterCubit;

  late final StreamSubscription recipesSub;
  late final StreamSubscription searchSub;
  late final StreamSubscription filterSub;

  RecipesFilterCubit({
    required this.recipesCubit,
    required this.searchCubit,
    required this.filterCubit,
  }) : super([]) {
    recipesSub = recipesCubit.stream.listen((_) => _recalculate());
    searchSub = searchCubit.stream.listen((_) => _recalculate());
    filterSub = filterCubit.stream.listen((_) => _recalculate());

    _recalculate();
  }

  void _recalculate() {
    if (recipesCubit.allRecipes.isEmpty) {
      emit([]);
      return;
    }

    final allRecipes = recipesCubit.allRecipes;
    final searchState = searchCubit.state.toLowerCase();
    final filterState = filterCubit.state;

    List<Recipe> list = allRecipes;

    // *** Поиск ***
    if (searchState.isNotEmpty) {
      list = list.where((recipe) {
        final titleMatch = recipe.title.toLowerCase().contains(searchState);

        final ingredientsOneMatch = recipe.ingredientsOne.any(
          (i) =>
              i.title.toLowerCase().contains(searchState) ||
              i.text.toLowerCase().contains(searchState),
        );

        final ingredientsTwoMatch = recipe.ingredientsTwo.any(
          (i) =>
              i.title.toLowerCase().contains(searchState) ||
              i.text.toLowerCase().contains(searchState),
        );

        return titleMatch || ingredientsOneMatch || ingredientsTwoMatch;
      }).toList();
    }

    // *** Фильтр по изображению ***
    if (filterState.imageType == ImageFilterType.withImage) {
      list = list.where((r) => r.image.isNotEmpty).toList();
    } else if (filterState.imageType == ImageFilterType.withoutImage) {
      list = list.where((r) => r.image.isEmpty).toList();
    }

    // *** Фильтр по времени ***
    if (filterState.maxMinutes != null) {
      list = list.where((r) {
        final minutes = parseMinutes(r.prepTime);
        return minutes != null && minutes <= filterState.maxMinutes!;
      }).toList();
    }

    emit(list);
  }

  @override
  Future<void> close() {
    recipesSub.cancel();
    searchSub.cancel();
    filterSub.cancel();
    return super.close();
  }
}
