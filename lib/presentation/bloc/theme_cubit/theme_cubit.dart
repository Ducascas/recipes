import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_app/data/datasource/datasource.dart';

enum AppTheme { light, dark }

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit(this._themeStorage) : super(AppTheme.light) {
    _loadTheme();
  }

  final ThemeStorage _themeStorage;

  Future<void> _loadTheme() async {
    final savedThemeIndex = await _themeStorage.getCurrentTheme();

    if (savedThemeIndex != null) {
      emit(AppTheme.values[savedThemeIndex]);
    }
  }

  Future<void> toggleTheme() async {
    final newTheme = state == AppTheme.light ? AppTheme.dark : AppTheme.light;
    emit(newTheme);
    await _themeStorage.saveCurrentTheme(newTheme);
  }
}
