import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipes_app/data/models/news.dart';

part 'recipes_state.freezed.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.loading() = _LoadingState;

  const factory RecipesState.loaded({
    required List<Recipe> visibleRecipes,
    required bool hasMorePages,
    required bool isOffline,
  }) = _LoadedState;

  const factory RecipesState.error(String message) = _ErrorState;
}
