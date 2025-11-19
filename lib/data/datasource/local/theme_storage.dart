import 'package:recipes_app/data/datasource/datasource.dart';
import 'package:recipes_app/presentation/bloc/theme_cubit/theme_cubit.dart';

class ThemeStorage extends BaseStorage {
  final _themeKey = 'current_theme';

  Future<void> saveCurrentTheme(AppTheme theme) async {
    final prefs = await sharedPreferences;
    await prefs.setInt(_themeKey, theme.index);
  }

  Future<int?> getCurrentTheme() async {
    final prefs = await sharedPreferences;
    return prefs.getInt(_themeKey);
  }
}
