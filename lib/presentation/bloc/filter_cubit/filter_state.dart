import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.freezed.dart';

enum ImageFilterType { withImage, withoutImage }

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState({
    ImageFilterType? imageType,
    int? maxMinutes,
  }) = _FilterState;
}
