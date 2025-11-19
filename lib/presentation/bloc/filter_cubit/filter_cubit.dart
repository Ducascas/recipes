import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/presentation/bloc/filter_cubit/filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState());

  void selectImageFilter(ImageFilterType? type) {
    emit(state.copyWith(imageType: type));
  }

  void setMaxMinutes(String input) {
    final parsed = int.tryParse(input);
    emit(state.copyWith(maxMinutes: parsed));
  }
}
