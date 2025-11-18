// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_News _$NewsFromJson(Map<String, dynamic> json) => _News(
  news:
      (json['news'] as List<dynamic>?)
          ?.map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$NewsToJson(_News instance) => <String, dynamic>{
  'news': instance.news,
};

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
  id: json['id'] as String? ?? '',
  steps:
      (json['steps'] as List<dynamic>?)
          ?.map((e) => RecipeStep.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  prepTime: json['prep_time'] as String? ?? '',
  energy:
      (json['energy'] as List<dynamic>?)
          ?.map((e) => EnergyItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ingredientsOne:
      (json['ingredients_one'] as List<dynamic>?)
          ?.map((e) => IngredientItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  ingredientsTwo:
      (json['ingredients_two'] as List<dynamic>?)
          ?.map((e) => IngredientItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  image: json['image'] as String? ?? '',
  title: json['title'] as String? ?? '',
  text: json['text'] as String? ?? '',
  dateAdded: json['date_added'] as String? ?? '',
  link: json['link'] as String? ?? '',
);

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
  'id': instance.id,
  'steps': instance.steps,
  'prep_time': instance.prepTime,
  'energy': instance.energy,
  'ingredients_one': instance.ingredientsOne,
  'ingredients_two': instance.ingredientsTwo,
  'image': instance.image,
  'title': instance.title,
  'text': instance.text,
  'date_added': instance.dateAdded,
  'link': instance.link,
};

_RecipeStep _$RecipeStepFromJson(Map<String, dynamic> json) => _RecipeStep(
  text: json['text'] as String? ?? '',
  image1: json['image1'] as String? ?? '',
  image2: json['image2'] as String? ?? '',
);

Map<String, dynamic> _$RecipeStepToJson(_RecipeStep instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image1': instance.image1,
      'image2': instance.image2,
    };

_EnergyItem _$EnergyItemFromJson(Map<String, dynamic> json) => _EnergyItem(
  title: json['title'] as String? ?? '',
  text: json['text'] as String? ?? '',
);

Map<String, dynamic> _$EnergyItemToJson(_EnergyItem instance) =>
    <String, dynamic>{'title': instance.title, 'text': instance.text};

_IngredientItem _$IngredientItemFromJson(Map<String, dynamic> json) =>
    _IngredientItem(
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$IngredientItemToJson(_IngredientItem instance) =>
    <String, dynamic>{'title': instance.title, 'text': instance.text};
