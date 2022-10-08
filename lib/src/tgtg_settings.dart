import "dart:math";

import "package:tgtg_client/src/helpers/helpers.dart";
import "package:tgtg_client/src/tgtg_credentials.dart";

/// The settings for the [UnsplashClient].
class TgTgSettings {
  /// Creates a private instance of [TgTgSettings].
  TgTgSettings._({
    this.credentials,
    this.email,
    this.userAgent,
    this.language,
    this.proxies,
    this.timeout,
    this.accessTokenLifetime,
    this.lastTimeTokenRefreshed,
    this.deviceType,
  });

  /// Creates new [TgTgSettings].
  ///
  /// Either one of [credentials] or [email] fields must be provided.
  static Future<TgTgSettings> instance({
    TgTgCredentials? credentials,
    String? email,
    String? userAgent,
    String? language,
    List<String>? proxies,
    int? timeout,
    int? accessTokenLifetime,
    DateTime? lastTimeTokenRefreshed,
    String? deviceType,
  }) async {
    if (credentials == null && email == null) {
      throw Exception(
        "Either one of credentials or email fields must be provided.",
      );
    }

    credentials ??= TgTgCredentials(
      accessToken: "",
      refreshToken: "",
      userId: "",
    );

    /// The defualt language is English.
    const langEn = "en-UK";

    /// The numbers of seconds in a hour multpiplied by 4.
    const fourHours = 3600 * 4;

    /// The default device type is Android.
    const androidDevice = "ANDROID";

    return TgTgSettings._(
      credentials: credentials,
      email: email,
      userAgent: userAgent,
      language: language ?? langEn,
      proxies: proxies,
      timeout: timeout,
      accessTokenLifetime: accessTokenLifetime ?? fourHours,
      lastTimeTokenRefreshed: lastTimeTokenRefreshed,
      deviceType: deviceType?.toUpperCase() ?? androidDevice,
    )._initAsync();
  }

  /// Perfroams async initialization.
  Future<TgTgSettings> _initAsync() async {
    return getUserAgent();
  }

  /// The credentials used by the [TgTgClient] to authenticate the user.
  final TgTgCredentials? credentials;

  /// The email used by the [TgTgClient] to authenticate the user.
  final String? email;

  /// The user agent used by the [TgTgClient] to authenticate the user.
  final String? userAgent;

  /// The language used by the [TgTgClient].
  final String? language;

  /// The list of proxies used by the [TgTgClient].
  final List<String>? proxies;

  /// The timeouts used by the [TgTgClient].
  final int? timeout;

  /// The lifetime in seconds of the access token used by the [TgTgClient].
  final int? accessTokenLifetime;

  /// The [DateTime] when the access token was last refreshed.
  DateTime? lastTimeTokenRefreshed;

  /// The device type used by the [TgTgClient].
  final String? deviceType;

  /// Get a random default user agent.
  String _getDefaultUserAgent() {
    final index = Random().nextInt(userAgents().length);
    return userAgents()[index];
  }

  /// Scraps the Play Store to get the latest version of the app.
  Future<TgTgSettings> getUserAgent() async {
    final version = await GooglePlayScraper().getLastApkVersion();

    if (version != null) {
      final index = Random().nextInt(userAgents().length);
      final newUserAgent = userAgents(version: version)[index];
      return copyWith(userAgent: newUserAgent);
    }

    return copyWith(userAgent: _getDefaultUserAgent());
  }

  /// Returns a copy of the current [TgTgSettings] with the provided fields.
  TgTgSettings copyWith({
    TgTgCredentials? credentials,
    String? email,
    String? userAgent,
    String? language,
    List<String>? proxies,
    int? timeout,
    int? accessTokenLifetime,
    DateTime? lastTimeTokenRefreshed,
    String? deviceType,
  }) {
    return TgTgSettings._(
      credentials: credentials ?? this.credentials,
      email: email ?? this.email,
      userAgent: userAgent ?? this.userAgent,
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
    return "TgTgSettings{credentials: $credentials, email: $email, userAgent: $userAgent, language: $language, proxies: $proxies, timeout: $timeout, accessTokenLifetime: $accessTokenLifetime, deviceType: $deviceType}";
  }
}
