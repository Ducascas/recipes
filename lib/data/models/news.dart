import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News with _$News {
  const factory News({@Default([]) List<Recipe> news}) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @Default('') String id,
    @Default([]) List<RecipeStep> steps,
    @JsonKey(name: 'prep_time') @Default('') String prepTime,
    @Default([]) List<EnergyItem> energy,
    @JsonKey(name: 'ingredients_one')
    @Default([])
    List<IngredientItem> ingredientsOne,
    @JsonKey(name: 'ingredients_two')
    @Default([])
    List<IngredientItem> ingredientsTwo,
    @Default('') String image,
    @Default('') String title,
    @Default('') String text,
    @JsonKey(name: 'date_added') @Default('') String dateAdded,
    @Default('') String link,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
abstract class RecipeStep with _$RecipeStep {
  const factory RecipeStep({
    @Default('') String text,
    @Default('') String image1,
    @Default('') String image2,
  }) = _RecipeStep;

  factory RecipeStep.fromJson(Map<String, dynamic> json) =>
      _$RecipeStepFromJson(json);
}

@freezed
abstract class EnergyItem with _$EnergyItem {
  const factory EnergyItem({
    @Default('') String title,
    @Default('') String text,
  }) = _EnergyItem;

  factory EnergyItem.fromJson(Map<String, dynamic> json) =>
      _$EnergyItemFromJson(json);
}

@freezed
abstract class IngredientItem with _$IngredientItem {
  const factory IngredientItem({
    @Default('') String title,
    @Default('') String text,
  }) = _IngredientItem;

  factory IngredientItem.fromJson(Map<String, dynamic> json) =>
      _$IngredientItemFromJson(json);
}
