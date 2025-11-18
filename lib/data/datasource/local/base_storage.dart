import 'package:shared_preferences/shared_preferences.dart';

class BaseStorage {
  SharedPreferences? _sharedPreferences;

  Future<SharedPreferences> get sharedPreferences async {
    return _sharedPreferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    final prefs = await sharedPreferences;
    await prefs.clear();
  }
}
