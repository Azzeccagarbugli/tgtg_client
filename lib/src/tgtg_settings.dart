import 'dart:math';

import 'package:tgtg_client/src/helpers/helpers.dart';
import 'package:tgtg_client/src/tgtg_credentials.dart';

/// The settings for the [UnsplashClient].
class TgTgSettings {
  /// Creates a private instance of [TgTgSettings].
  TgTgSettings._({
    this.credentials,
    this.email,
    this.userAgent,
  });

  /// Creates new [TgTgSettings].
  ///
  /// Either one of [credentials] or [email] fields must be provided.
  static Future<TgTgSettings> instance({
    TgTgCredentials? credentials,
    String? email,
  }) async {
    if (credentials == null && email == null) {
      throw ArgumentError(
        "Either one of credentials or email fields must be provided.",
      );
    }

    return TgTgSettings._(
      credentials: credentials,
      email: email,
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

  TgTgSettings copyWith({
    TgTgCredentials? credentials,
    String? email,
    String? userAgent,
  }) {
    return TgTgSettings._(
      credentials: credentials ?? this.credentials,
      email: email ?? this.email,
      userAgent: userAgent ?? this.userAgent,
    );
  }

  @override
  String toString() {
    return 'TgTgSettings{credentials: $credentials}';
  }
}
