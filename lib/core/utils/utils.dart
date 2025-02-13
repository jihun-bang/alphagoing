import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class Utils {
  const Utils._();

  static Future<dynamic> loadJsonFile(String fileName) async {
    final data = await rootBundle.loadString('assets/data/$fileName.json');
    return json.decode(data);
  }

  static String secondToTimestamp(int time) {
    final duration = Duration(seconds: time);
    return duration.toString().split('.').first.padLeft(8, "0");
  }

  static String secondToMinutesTimestamp(int time) {
    int minutes = time ~/ 60;
    int remainingSeconds = time % 60;

    String formattedTime =
        '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }

  static String get appLocale {
    return Intl.getCurrentLocale().toLowerCase();
  }

  static Locale toLocale(String locale) {
    try {
      return Locale(locale.substring(0, 2), locale.substring(3).toUpperCase());
    } catch (_) {
      return const Locale('en', 'US');
    }
  }
}
