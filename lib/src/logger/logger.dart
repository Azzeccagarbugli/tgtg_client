import "dart:developer" as dart_log show log;

import "package:tgtg_client/src/logger/level.dart";

export "color.dart";
export "level.dart";

/// A logger that logs messages to the console.
///
/// This logger is used by the [TgTgClient] and
/// by default is not active.
class Logger {
  /// Creates a new logger.
  Logger({
    required this.title,
    required this.description,
    required this.level,
    bool? isActive,
  }) : _isActive = isActive ?? false;

  /// The title of the logger.
  final String title;

  /// The description of the logger.
  final String description;

  /// Whether the logger is active or not.
  final Level level;

  final bool _isActive;

  /// Log on the console with the [title] and [description].
  void log() {
    if (_isActive) {
      dart_log.log(
        level.colorFromLevel(
          message: "[${DateTime.now()}][${title.toUpperCase()}] • $description",
        ),
      );
    }
  }
}
