import "dart:io";

import "package:tgtg_client/src/auth_manager.dart";
import "package:tgtg_client/src/credentials.dart";

/// The defualt language is English.
const _langEn = "en-UK";

/// The numbers of seconds in a hour multpiplied by 4.
const _fourHours = 3600 * 4;

/// The default device type is Android.
const _androidDevice = "ANDROID";

/// The settings for the [UnsplashClient].
class TgTgSettings {
  /// Creates a instance of [TgTgSettings].
  TgTgSettings({
    this.credentials,
    this.email,
    this.directory,
    this.lastTimeTokenRefreshed,
    String? language,
    List<String>? proxies,
    int? timeout,
    int? accessTokenLifetime,
    String? deviceType,
  })  : language = language ?? _langEn,
        proxies = proxies ?? [],
        timeout = timeout ?? 0,
        accessTokenLifetime = accessTokenLifetime ?? _fourHours,
        deviceType = deviceType ?? _androidDevice;

  /// The credentials used by the [TgTgClient] to authenticate the user.
  TgTgCredentials? credentials;

  /// The email used by the [TgTgClient] to authenticate the user.
  final String? email;

  /// The [Directory] used to stote the persistent auth.
  final Directory? directory;

  /// The language used by the [TgTgClient].
  final String? language;

  /// The list of proxies used by the [TgTgClient].
  final List<String>? proxies;

  /// The timeouts used by the [TgTgClient].
  final int? timeout;

  /// The lifetime in seconds of the access token used by the [TgTgClient].
  final int? accessTokenLifetime;

  /// The [DateTime] when the access token was last refreshed.
  final DateTime? lastTimeTokenRefreshed;

  /// The device type used by the [TgTgClient].
  final String? deviceType;

  /// The [AuthManager] used by the [TgTgSettings].
  AuthManager? get authManager {
    if (directory != null) {
      return AuthManager(
        directory: directory!,
        tgTgSettings: this,
      );
    }
    return null;
  }

  /// Returns a copy of the current [TgTgSettings] with the provided fields.
  TgTgSettings copyWith({
    TgTgCredentials? credentials,
    String? email,
    Directory? directory,
    String? userAgent,
    String? language,
    List<String>? proxies,
    int? timeout,
    int? accessTokenLifetime,
    DateTime? lastTimeTokenRefreshed,
    String? deviceType,
  }) {
    return TgTgSettings(
      credentials: credentials ?? this.credentials,
      email: email ?? this.email,
      directory: directory ?? this.directory,
      language: language ?? this.language,
      proxies: proxies ?? this.proxies,
      timeout: timeout ?? this.timeout,
      accessTokenLifetime: accessTokenLifetime ?? this.accessTokenLifetime,
      lastTimeTokenRefreshed:
          lastTimeTokenRefreshed ?? this.lastTimeTokenRefreshed,
      deviceType: deviceType ?? this.deviceType,
    );
  }

  @override
  String toString() {
    return "TgTgSettings{credentials: $credentials, email: $email, language: $language, proxies: $proxies, timeout: $timeout, accessTokenLifetime: $accessTokenLifetime, deviceType: $deviceType}";
  }
}
