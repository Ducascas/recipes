// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$News {

 List<Recipe> get news;
/// Create a copy of News
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsCopyWith<News> get copyWith => _$NewsCopyWithImpl<News>(this as News, _$identity);

  /// Serializes this News to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is News&&const DeepCollectionEquality().equals(other.news, news));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(news));

@override
String toString() {
  return 'News(news: $news)';
}


}

/// @nodoc
abstract mixin class $NewsCopyWith<$Res>  {
  factory $NewsCopyWith(News value, $Res Function(News) _then) = _$NewsCopyWithImpl;
@useResult
$Res call({
 List<Recipe> news
});




}
/// @nodoc
class _$NewsCopyWithImpl<$Res>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._self, this._then);

  final News _self;
  final $Res Function(News) _then;

/// Create a copy of News
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? news = null,}) {
  return _then(_self.copyWith(
news: null == news ? _self.news : news // ignore: cast_nullable_to_non_nullable
as List<Recipe>,
  ));
}

}


/// Adds pattern-matching-related methods to [News].
extension NewsPatterns on News {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _News value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _News() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _News value)  $default,){
final _that = this;
switch (_that) {
case _News():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _News value)?  $default,){
final _that = this;
switch (_that) {
case _News() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Recipe> news)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _News() when $default != null:
return $default(_that.news);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Recipe> news)  $default,) {final _that = this;
switch (_that) {
case _News():
return $default(_that.news);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Recipe> news)?  $default,) {final _that = this;
switch (_that) {
case _News() when $default != null:
return $default(_that.news);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _News implements News {
  const _News({final  List<Recipe> news = const []}): _news = news;
  factory _News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

 final  List<Recipe> _news;
@override@JsonKey() List<Recipe> get news {
  if (_news is EqualUnmodifiableListView) return _news;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_news);
}


/// Create a copy of News
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsCopyWith<_News> get copyWith => __$NewsCopyWithImpl<_News>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _News&&const DeepCollectionEquality().equals(other._news, _news));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_news));

@override
String toString() {
  return 'News(news: $news)';
}


}

/// @nodoc
abstract mixin class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) _then) = __$NewsCopyWithImpl;
@override @useResult
$Res call({
 List<Recipe> news
});




}
/// @nodoc
class __$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(this._self, this._then);

  final _News _self;
  final $Res Function(_News) _then;

/// Create a copy of News
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? news = null,}) {
  return _then(_News(
news: null == news ? _self._news : news // ignore: cast_nullable_to_non_nullable
as List<Recipe>,
  ));
}


}


/// @nodoc
mixin _$Recipe {

 String get id; List<RecipeStep> get steps;@JsonKey(name: 'prep_time') String get prepTime; List<EnergyItem> get energy;@JsonKey(name: 'ingredients_one') List<IngredientItem> get ingredientsOne;@JsonKey(name: 'ingredients_two') List<IngredientItem> get ingredientsTwo; String get image; String get title; String get text;@JsonKey(name: 'date_added') String get dateAdded; String get link;
/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeCopyWith<Recipe> get copyWith => _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recipe&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.prepTime, prepTime) || other.prepTime == prepTime)&&const DeepCollectionEquality().equals(other.energy, energy)&&const DeepCollectionEquality().equals(other.ingredientsOne, ingredientsOne)&&const DeepCollectionEquality().equals(other.ingredientsTwo, ingredientsTwo)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(steps),prepTime,const DeepCollectionEquality().hash(energy),const DeepCollectionEquality().hash(ingredientsOne),const DeepCollectionEquality().hash(ingredientsTwo),image,title,text,dateAdded,link);

@override
String toString() {
  return 'Recipe(id: $id, steps: $steps, prepTime: $prepTime, energy: $energy, ingredientsOne: $ingredientsOne, ingredientsTwo: $ingredientsTwo, image: $image, title: $title, text: $text, dateAdded: $dateAdded, link: $link)';
}


}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res>  {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) = _$RecipeCopyWithImpl;
@useResult
$Res call({
 String id, List<RecipeStep> steps,@JsonKey(name: 'prep_time') String prepTime, List<EnergyItem> energy,@JsonKey(name: 'ingredients_one') List<IngredientItem> ingredientsOne,@JsonKey(name: 'ingredients_two') List<IngredientItem> ingredientsTwo, String image, String title, String text,@JsonKey(name: 'date_added') String dateAdded, String link
});




}
/// @nodoc
class _$RecipeCopyWithImpl<$Res>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? steps = null,Object? prepTime = null,Object? energy = null,Object? ingredientsOne = null,Object? ingredientsTwo = null,Object? image = null,Object? title = null,Object? text = null,Object? dateAdded = null,Object? link = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<RecipeStep>,prepTime: null == prepTime ? _self.prepTime : prepTime // ignore: cast_nullable_to_non_nullable
as String,energy: null == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as List<EnergyItem>,ingredientsOne: null == ingredientsOne ? _self.ingredientsOne : ingredientsOne // ignore: cast_nullable_to_non_nullable
as List<IngredientItem>,ingredientsTwo: null == ingredientsTwo ? _self.ingredientsTwo : ingredientsTwo // ignore: cast_nullable_to_non_nullable
as List<IngredientItem>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,dateAdded: null == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recipe value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recipe value)  $default,){
final _that = this;
switch (_that) {
case _Recipe():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recipe value)?  $default,){
final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<RecipeStep> steps, @JsonKey(name: 'prep_time')  String prepTime,  List<EnergyItem> energy, @JsonKey(name: 'ingredients_one')  List<IngredientItem> ingredientsOne, @JsonKey(name: 'ingredients_two')  List<IngredientItem> ingredientsTwo,  String image,  String title,  String text, @JsonKey(name: 'date_added')  String dateAdded,  String link)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.steps,_that.prepTime,_that.energy,_that.ingredientsOne,_that.ingredientsTwo,_that.image,_that.title,_that.text,_that.dateAdded,_that.link);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<RecipeStep> steps, @JsonKey(name: 'prep_time')  String prepTime,  List<EnergyItem> energy, @JsonKey(name: 'ingredients_one')  List<IngredientItem> ingredientsOne, @JsonKey(name: 'ingredients_two')  List<IngredientItem> ingredientsTwo,  String image,  String title,  String text, @JsonKey(name: 'date_added')  String dateAdded,  String link)  $default,) {final _that = this;
switch (_that) {
case _Recipe():
return $default(_that.id,_that.steps,_that.prepTime,_that.energy,_that.ingredientsOne,_that.ingredientsTwo,_that.image,_that.title,_that.text,_that.dateAdded,_that.link);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<RecipeStep> steps, @JsonKey(name: 'prep_time')  String prepTime,  List<EnergyItem> energy, @JsonKey(name: 'ingredients_one')  List<IngredientItem> ingredientsOne, @JsonKey(name: 'ingredients_two')  List<IngredientItem> ingredientsTwo,  String image,  String title,  String text, @JsonKey(name: 'date_added')  String dateAdded,  String link)?  $default,) {final _that = this;
switch (_that) {
case _Recipe() when $default != null:
return $default(_that.id,_that.steps,_that.prepTime,_that.energy,_that.ingredientsOne,_that.ingredientsTwo,_that.image,_that.title,_that.text,_that.dateAdded,_that.link);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recipe implements Recipe {
  const _Recipe({this.id = '', final  List<RecipeStep> steps = const [], @JsonKey(name: 'prep_time') this.prepTime = '', final  List<EnergyItem> energy = const [], @JsonKey(name: 'ingredients_one') final  List<IngredientItem> ingredientsOne = const [], @JsonKey(name: 'ingredients_two') final  List<IngredientItem> ingredientsTwo = const [], this.image = '', this.title = '', this.text = '', @JsonKey(name: 'date_added') this.dateAdded = '', this.link = ''}): _steps = steps,_energy = energy,_ingredientsOne = ingredientsOne,_ingredientsTwo = ingredientsTwo;
  factory _Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

@override@JsonKey() final  String id;
 final  List<RecipeStep> _steps;
@override@JsonKey() List<RecipeStep> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override@JsonKey(name: 'prep_time') final  String prepTime;
 final  List<EnergyItem> _energy;
@override@JsonKey() List<EnergyItem> get energy {
  if (_energy is EqualUnmodifiableListView) return _energy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_energy);
}

 final  List<IngredientItem> _ingredientsOne;
@override@JsonKey(name: 'ingredients_one') List<IngredientItem> get ingredientsOne {
  if (_ingredientsOne is EqualUnmodifiableListView) return _ingredientsOne;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredientsOne);
}

 final  List<IngredientItem> _ingredientsTwo;
@override@JsonKey(name: 'ingredients_two') List<IngredientItem> get ingredientsTwo {
  if (_ingredientsTwo is EqualUnmodifiableListView) return _ingredientsTwo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredientsTwo);
}

@override@JsonKey() final  String image;
@override@JsonKey() final  String title;
@override@JsonKey() final  String text;
@override@JsonKey(name: 'date_added') final  String dateAdded;
@override@JsonKey() final  String link;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeCopyWith<_Recipe> get copyWith => __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recipe&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.prepTime, prepTime) || other.prepTime == prepTime)&&const DeepCollectionEquality().equals(other._energy, _energy)&&const DeepCollectionEquality().equals(other._ingredientsOne, _ingredientsOne)&&const DeepCollectionEquality().equals(other._ingredientsTwo, _ingredientsTwo)&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text)&&(identical(other.dateAdded, dateAdded) || other.dateAdded == dateAdded)&&(identical(other.link, link) || other.link == link));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_steps),prepTime,const DeepCollectionEquality().hash(_energy),const DeepCollectionEquality().hash(_ingredientsOne),const DeepCollectionEquality().hash(_ingredientsTwo),image,title,text,dateAdded,link);

@override
String toString() {
  return 'Recipe(id: $id, steps: $steps, prepTime: $prepTime, energy: $energy, ingredientsOne: $ingredientsOne, ingredientsTwo: $ingredientsTwo, image: $image, title: $title, text: $text, dateAdded: $dateAdded, link: $link)';
}


}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) = __$RecipeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<RecipeStep> steps,@JsonKey(name: 'prep_time') String prepTime, List<EnergyItem> energy,@JsonKey(name: 'ingredients_one') List<IngredientItem> ingredientsOne,@JsonKey(name: 'ingredients_two') List<IngredientItem> ingredientsTwo, String image, String title, String text,@JsonKey(name: 'date_added') String dateAdded, String link
});




}
/// @nodoc
class __$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

/// Create a copy of Recipe
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? steps = null,Object? prepTime = null,Object? energy = null,Object? ingredientsOne = null,Object? ingredientsTwo = null,Object? image = null,Object? title = null,Object? text = null,Object? dateAdded = null,Object? link = null,}) {
  return _then(_Recipe(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<RecipeStep>,prepTime: null == prepTime ? _self.prepTime : prepTime // ignore: cast_nullable_to_non_nullable
as String,energy: null == energy ? _self._energy : energy // ignore: cast_nullable_to_non_nullable
as List<EnergyItem>,ingredientsOne: null == ingredientsOne ? _self._ingredientsOne : ingredientsOne // ignore: cast_nullable_to_non_nullable
as List<IngredientItem>,ingredientsTwo: null == ingredientsTwo ? _self._ingredientsTwo : ingredientsTwo // ignore: cast_nullable_to_non_nullable
as List<IngredientItem>,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,dateAdded: null == dateAdded ? _self.dateAdded : dateAdded // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RecipeStep {

 String get text; String get image1; String get image2;
/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeStepCopyWith<RecipeStep> get copyWith => _$RecipeStepCopyWithImpl<RecipeStep>(this as RecipeStep, _$identity);

  /// Serializes this RecipeStep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeStep&&(identical(other.text, text) || other.text == text)&&(identical(other.image1, image1) || other.image1 == image1)&&(identical(other.image2, image2) || other.image2 == image2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,image1,image2);

@override
String toString() {
  return 'RecipeStep(text: $text, image1: $image1, image2: $image2)';
}


}

/// @nodoc
abstract mixin class $RecipeStepCopyWith<$Res>  {
  factory $RecipeStepCopyWith(RecipeStep value, $Res Function(RecipeStep) _then) = _$RecipeStepCopyWithImpl;
@useResult
$Res call({
 String text, String image1, String image2
});




}
/// @nodoc
class _$RecipeStepCopyWithImpl<$Res>
    implements $RecipeStepCopyWith<$Res> {
  _$RecipeStepCopyWithImpl(this._self, this._then);

  final RecipeStep _self;
  final $Res Function(RecipeStep) _then;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? image1 = null,Object? image2 = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,image1: null == image1 ? _self.image1 : image1 // ignore: cast_nullable_to_non_nullable
as String,image2: null == image2 ? _self.image2 : image2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeStep].
extension RecipeStepPatterns on RecipeStep {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeStep value)  $default,){
final _that = this;
switch (_that) {
case _RecipeStep():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeStep value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String image1,  String image2)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that.text,_that.image1,_that.image2);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String image1,  String image2)  $default,) {final _that = this;
switch (_that) {
case _RecipeStep():
return $default(_that.text,_that.image1,_that.image2);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String image1,  String image2)?  $default,) {final _that = this;
switch (_that) {
case _RecipeStep() when $default != null:
return $default(_that.text,_that.image1,_that.image2);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeStep implements RecipeStep {
  const _RecipeStep({this.text = '', this.image1 = '', this.image2 = ''});
  factory _RecipeStep.fromJson(Map<String, dynamic> json) => _$RecipeStepFromJson(json);

@override@JsonKey() final  String text;
@override@JsonKey() final  String image1;
@override@JsonKey() final  String image2;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeStepCopyWith<_RecipeStep> get copyWith => __$RecipeStepCopyWithImpl<_RecipeStep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeStepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeStep&&(identical(other.text, text) || other.text == text)&&(identical(other.image1, image1) || other.image1 == image1)&&(identical(other.image2, image2) || other.image2 == image2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,image1,image2);

@override
String toString() {
  return 'RecipeStep(text: $text, image1: $image1, image2: $image2)';
}


}

/// @nodoc
abstract mixin class _$RecipeStepCopyWith<$Res> implements $RecipeStepCopyWith<$Res> {
  factory _$RecipeStepCopyWith(_RecipeStep value, $Res Function(_RecipeStep) _then) = __$RecipeStepCopyWithImpl;
@override @useResult
$Res call({
 String text, String image1, String image2
});




}
/// @nodoc
class __$RecipeStepCopyWithImpl<$Res>
    implements _$RecipeStepCopyWith<$Res> {
  __$RecipeStepCopyWithImpl(this._self, this._then);

  final _RecipeStep _self;
  final $Res Function(_RecipeStep) _then;

/// Create a copy of RecipeStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? image1 = null,Object? image2 = null,}) {
  return _then(_RecipeStep(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,image1: null == image1 ? _self.image1 : image1 // ignore: cast_nullable_to_non_nullable
as String,image2: null == image2 ? _self.image2 : image2 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EnergyItem {

 String get title; String get text;
/// Create a copy of EnergyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnergyItemCopyWith<EnergyItem> get copyWith => _$EnergyItemCopyWithImpl<EnergyItem>(this as EnergyItem, _$identity);

  /// Serializes this EnergyItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnergyItem&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'EnergyItem(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class $EnergyItemCopyWith<$Res>  {
  factory $EnergyItemCopyWith(EnergyItem value, $Res Function(EnergyItem) _then) = _$EnergyItemCopyWithImpl;
@useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class _$EnergyItemCopyWithImpl<$Res>
    implements $EnergyItemCopyWith<$Res> {
  _$EnergyItemCopyWithImpl(this._self, this._then);

  final EnergyItem _self;
  final $Res Function(EnergyItem) _then;

/// Create a copy of EnergyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EnergyItem].
extension EnergyItemPatterns on EnergyItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnergyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnergyItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnergyItem value)  $default,){
final _that = this;
switch (_that) {
case _EnergyItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnergyItem value)?  $default,){
final _that = this;
switch (_that) {
case _EnergyItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnergyItem() when $default != null:
return $default(_that.title,_that.text);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String text)  $default,) {final _that = this;
switch (_that) {
case _EnergyItem():
return $default(_that.title,_that.text);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String text)?  $default,) {final _that = this;
switch (_that) {
case _EnergyItem() when $default != null:
return $default(_that.title,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnergyItem implements EnergyItem {
  const _EnergyItem({this.title = '', this.text = ''});
  factory _EnergyItem.fromJson(Map<String, dynamic> json) => _$EnergyItemFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String text;

/// Create a copy of EnergyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnergyItemCopyWith<_EnergyItem> get copyWith => __$EnergyItemCopyWithImpl<_EnergyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnergyItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnergyItem&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'EnergyItem(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class _$EnergyItemCopyWith<$Res> implements $EnergyItemCopyWith<$Res> {
  factory _$EnergyItemCopyWith(_EnergyItem value, $Res Function(_EnergyItem) _then) = __$EnergyItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class __$EnergyItemCopyWithImpl<$Res>
    implements _$EnergyItemCopyWith<$Res> {
  __$EnergyItemCopyWithImpl(this._self, this._then);

  final _EnergyItem _self;
  final $Res Function(_EnergyItem) _then;

/// Create a copy of EnergyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,}) {
  return _then(_EnergyItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$IngredientItem {

 String get title; String get text;
/// Create a copy of IngredientItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IngredientItemCopyWith<IngredientItem> get copyWith => _$IngredientItemCopyWithImpl<IngredientItem>(this as IngredientItem, _$identity);

  /// Serializes this IngredientItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IngredientItem&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'IngredientItem(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class $IngredientItemCopyWith<$Res>  {
  factory $IngredientItemCopyWith(IngredientItem value, $Res Function(IngredientItem) _then) = _$IngredientItemCopyWithImpl;
@useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class _$IngredientItemCopyWithImpl<$Res>
    implements $IngredientItemCopyWith<$Res> {
  _$IngredientItemCopyWithImpl(this._self, this._then);

  final IngredientItem _self;
  final $Res Function(IngredientItem) _then;

/// Create a copy of IngredientItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? text = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IngredientItem].
extension IngredientItemPatterns on IngredientItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IngredientItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IngredientItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IngredientItem value)  $default,){
final _that = this;
switch (_that) {
case _IngredientItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IngredientItem value)?  $default,){
final _that = this;
switch (_that) {
case _IngredientItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IngredientItem() when $default != null:
return $default(_that.title,_that.text);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String text)  $default,) {final _that = this;
switch (_that) {
case _IngredientItem():
return $default(_that.title,_that.text);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String text)?  $default,) {final _that = this;
switch (_that) {
case _IngredientItem() when $default != null:
return $default(_that.title,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IngredientItem implements IngredientItem {
  const _IngredientItem({this.title = '', this.text = ''});
  factory _IngredientItem.fromJson(Map<String, dynamic> json) => _$IngredientItemFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String text;

/// Create a copy of IngredientItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IngredientItemCopyWith<_IngredientItem> get copyWith => __$IngredientItemCopyWithImpl<_IngredientItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IngredientItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IngredientItem&&(identical(other.title, title) || other.title == title)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,text);

@override
String toString() {
  return 'IngredientItem(title: $title, text: $text)';
}


}

/// @nodoc
abstract mixin class _$IngredientItemCopyWith<$Res> implements $IngredientItemCopyWith<$Res> {
  factory _$IngredientItemCopyWith(_IngredientItem value, $Res Function(_IngredientItem) _then) = __$IngredientItemCopyWithImpl;
@override @useResult
$Res call({
 String title, String text
});




}
/// @nodoc
class __$IngredientItemCopyWithImpl<$Res>
    implements _$IngredientItemCopyWith<$Res> {
  __$IngredientItemCopyWithImpl(this._self, this._then);

  final _IngredientItem _self;
  final $Res Function(_IngredientItem) _then;

/// Create a copy of IngredientItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? text = null,}) {
  return _then(_IngredientItem(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
