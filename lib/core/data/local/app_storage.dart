import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  const AppStorage._();

  static late final SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic get(String key) {
    return _sharedPreferences.get(key);
  }

  static void clear() async {
    await _sharedPreferences.clear();
  }

  static bool has(String key) {
    return _sharedPreferences.containsKey(key);
  }

  static Future<bool> remove(String key) async {
    return await _sharedPreferences.remove(key);
  }

  static Future<bool> set(String key, data) async {
    return await _sharedPreferences.setString(key, data.toString());
  }
}
