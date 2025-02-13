import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart' as l;

class Logger {
  static LogLevel logLevel = LogLevel.debug;

  Logger._();

  static final l.Logger _logger = l.Logger(
    printer: l.PrettyPrinter(
      printTime: true,
      printEmojis: true,
    ),
  );

  static void print(dynamic message) {
    debugPrint('${kIsWeb ? '[AlphaGoing]' : ''}[${DateTime.now()}] $message');
  }

  static void d(dynamic message) {
    switch (logLevel) {
      case LogLevel.debug:
        print(message);
        _logger.d(message);
      default:
    }
  }

  static void i(dynamic message) {
    switch (logLevel) {
      case LogLevel.debug:
      case LogLevel.info:
        print(message);
        if (!kDebugMode) _logger.i(message);
      default:
    }
  }

  static void e(dynamic message, [Object? error, StackTrace? stackTrace]) {
    switch (logLevel) {
      case LogLevel.debug:
      case LogLevel.info:
      case LogLevel.error:
        print(message);
        _logger.e(message);
      default:
    }
  }
}

enum LogLevel {
  none(0),
  debug(1),
  info(2),
  error(3);

  const LogLevel(this.level);

  final int level;
}
