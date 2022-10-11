/// Colors for the logger.
enum Color {
  /// Black color.
  black(value: "\x1B[30m"),

  /// Red color.
  red(value: "\x1B[31m"),

  /// Green color.
  green(value: "\x1B[32m"),

  /// Yellow color.
  yellow(value: "\x1B[33m"),

  /// Blue color.
  blue(value: "\x1B[34m"),

  /// Magenta color.
  magenta(value: "\x1B[35m"),

  /// Cyan color.
  cyan(value: "\x1B[36m"),

  /// White color.
  white(value: "\x1B[37m"),

  /// Bold style.
  bold(value: "\x1B[1m"),

  /// Reset style.
  reset(value: "\x1B[0m");

  /// Colors value used the [ANSI].
  const Color({required this.value});

  /// The [ANSI] value of the color.
  final String value;
}
