import "package:tgtg_client/src/logger/color.dart";

/// Levels of logging.
enum Level {
  /// Log level for debugging.
  debug(description: "DEBUG"),

  /// Log level for information.
  info(description: "INFO"),

  /// Log level for warnings.
  warning(description: "WARNING"),

  /// Log level for errors.
  error(description: "ERROR"),

  /// Log level for severe errors.
  fatal(description: "FATAL");

  /// The constructor of the level.
  const Level({required this.description});

  /// The description of the level.
  final String description;

  /// The style of the level.
  String colorFromLevel({required String message}) {
    final Color color;

    switch (this) {
      case Level.debug:
        color = Color.blue;
        break;
      case Level.info:
        color = Color.green;
        break;
      case Level.warning:
        color = Color.yellow;
        break;
      case Level.error:
        color = Color.magenta;
        break;
      case Level.fatal:
        color = Color.red;
        break;
    }

    return "${color.value}[$description]$message${Color.reset.value}";
  }
}
