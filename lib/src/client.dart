import "package:http/http.dart" as http;
import "package:tgtg_client/tgtg_client.dart";

/// A client for accessing the **Too Good To Go** API.
///
/// Http calls are made through the [http](https://pub.dev/packages/http)
/// package, which provides a platform independent client, making the
/// [TgTgClient] platform independent as well.
class TgTgClient {
  /// Creates a new instance of the [TgTgClient].
  ///
  /// [settings] can be created using the [TgTgSettings] class and must not be `null`.
  ///
  /// The logger is by default disabled, but can be enabled by setting [enableLogging] to `true`.
  ///
  /// If no [httpClient] is provided, one is created.
  TgTgClient({
    required this.settings,
    http.Client? httpClient,
    bool? enableLogging,
  })  : _http = httpClient ?? http.Client(),
        enableLogging = enableLogging ?? false;

  /// Empty constructor to allow an easier [sign up].
  TgTgClient.empty()
      : settings = TgTgSettings(),
        _http = http.Client(),
        enableLogging = false;

  /// The URI for the base url of the Too Good To Go API.
  final Uri baseUrl = Uri.parse(baseUrlTgTg);

  /// The [TgTgSettings] used by this client.
  TgTgSettings settings;

  /// Value indicating whether the logger should be enabled.
  bool enableLogging;

  final http.Client _http;

  /// Get the [http.Client] used by this client.
  http.Client get httpClient => _http;

  var _closed = false;

  /// Check if the [http.Client] is closed.
  bool get isClosed => _closed;

  /// Provides access to resources related to [Items].
  TgTgItems get items => TgTgItems(this);

  /// Provides access to resources related to [Orders].
  TgTgOrders get orders => TgTgOrders(this);

  /// Get the [TgTgAuthManager] used by this client.
  AuthManager? get _authManager => settings.authManager;

  /// Refreshes the access token.
  Future<void> _refreshToken() async {
    /// Refresh token
    final ltrt = settings.lastTimeTokenRefreshed ??
        await _authManager?.getLastTimeTokenRefreshed();

    if (ltrt != null) {
      /// Boolean condition to check if the token is expired.
      final check = DateTime.now().difference(ltrt).inSeconds <=
          settings.accessTokenLifetime!;

      if (check) {
        Logger(
          title: "Refresh token",
          description: "Token is not expired yet!",
          level: Level.info,
          isActive: enableLogging,
        ).log();
        return;
      }

      Logger(
        title: "Refresh token",
        description: "Refreshing token...",
        level: Level.debug,
        isActive: enableLogging,
      ).log();

      /// Response body.
      Response<TgTgCredentials>? response;

      final req = Request(
        client: this,
        httpRequest: http.Request(
          "POST",
          baseUrl.resolve(refresh),
        ),
        bodyDeserializer: (body) => TgTgCredentials.fromJson(
          body as Map<String, dynamic>,
        ),
        jsonBody: {
          "refresh_token": settings.credentials!.refreshToken,
        },
      );

      response = await req.go();

      if (response.isOk) {
        final refreshResponse = response.json as Map<String, dynamic>;

        final cred = TgTgCredentials(
          accessToken: refreshResponse["access_token"] as String,
          refreshToken: refreshResponse["refresh_token"] as String,
          userId: settings.credentials!.userId,
        );

        /// Refresh token.
        settings = settings.copyWith(
          credentials: cred,
          lastTimeTokenRefreshed: DateTime.now(),
        );

        Logger(
          title: "Refresh token",
          description: "Token correctly refreshed!",
          level: Level.info,
          isActive: enableLogging,
        ).log();
        return;
      } else {
        throw Exception("${response.statusCode} ${response.body}");
      }
    } else {
      if (_authManager != null) {
        await _authManager!.createAuthFile();
      }
    }
  }

  /// Once that the polling is started the user will be
  /// asked to check the inbox and confirm the login.
  Future<void> _startPolling({required String pollingId}) async {
    /// Email from the [TgTgSettings].
    final email = settings.email;

    /// Response body.
    Response<TgTgCredentials>? response;

    for (final _ in List.generate(maxPollingTries, (_) {}, growable: false)) {
      final req = Request(
        client: this,
        httpRequest: http.Request(
          "POST",
          baseUrl.resolve(authPolling),
        ),
        bodyDeserializer: (body) => TgTgCredentials.fromJson(
          body as Map<String, dynamic>,
        ),
        jsonBody: {
          "device_type": settings.deviceType,
          "email": email,
          "request_polling_id": pollingId,
        },
      );

      response = await req.go();

      if (response.statusCode == 202) {
        Logger(
          title: "Login",
          description: "Check your mailbox on PC to continue...",
          level: Level.debug,
          isActive: enableLogging,
        ).log();
        await Future<dynamic>.delayed(pollingWaitTime);
        continue;
      } else if (response.isOk) {
        final loginResponse = response.json as Map<String, dynamic>;

        final cred = TgTgCredentials(
          accessToken: loginResponse["access_token"] as String,
          refreshToken: loginResponse["refresh_token"] as String,
          // ignore: avoid_dynamic_calls
          userId: loginResponse["startup_data"]["user"]["user_id"] as String,
        );

        /// Setting the token Data and the credentials.
        settings = settings.copyWith(
          credentials: cred,
          lastTimeTokenRefreshed: DateTime.now(),
        );

        Logger(
          title: "Login",
          description: "Login successful!",
          level: Level.info,
          isActive: enableLogging,
        ).log();
        return;
      } else {
        // Too many requsts.
        if (response.statusCode == 429) {
          throw Exception(
            "${response.statusCode}. Too many requests. Try again later.",
          );
        } else {
          throw Exception("${response.statusCode} ${response.body}");
        }
      }
    }

    throw Exception("Max retries reached. Try again.");
  }

  /// Login to the **Too Good To Go** API.
  ///
  /// The client will retrive the right credentials to
  /// login to the API and will populate the header of
  /// each future request.
  Future<void> login() async {
    /// Email from the [TgTgSettings].
    final email = settings.email;

    if (email == null && settings.credentials == null && _authManager == null) {
      throw Exception(
        "Either one of credentials or email fields must be provided in order to login.",
      );
    }

    if (_authManager != null && (await _authManager!.isAuthFilePresent)) {
      settings.credentials = await _authManager?.getCredentialsFromAuth();
    }

    /// Response body.
    Response<TgTgCredentials>? response;

    if (settings.credentials != null && settings.credentials!.isAlreadyLogged) {
      await _refreshToken();
    } else {
      final req = Request(
        client: this,
        httpRequest: http.Request(
          "POST",
          baseUrl.resolve(authByEmail),
        ),
        bodyDeserializer: (body) => TgTgCredentials.fromJson(
          body as Map<String, dynamic>,
        ),
        jsonBody: {
          "device_type": settings.deviceType,
          "email": email,
        },
      );

      response = await req.go();

      if (response.isOk) {
        final firstLoginReponse = response.json as Map<String, dynamic>;

        if (firstLoginReponse["state"] == "TERMS") {
          throw Exception(
            "This email $email is not linked to a Too Good To Go account. "
            "Please signup with this email first.",
          );
        } else if (firstLoginReponse["state"] == "WAIT") {
          await _startPolling(
            pollingId: firstLoginReponse["polling_id"] as String,
          );
          if (_authManager != null) {
            await _authManager!.createAuthFile();
          }
        } else {
          throw Exception(
            "Unknown error with the status code ${response.statusCode}. "
            "Feel free to report the issue.",
          );
        }
      } else {
        // Too many requsts.
        if (response.statusCode == 429) {
          throw Exception(
            "${response.statusCode}. Too many requests. Try again later.",
          );
        } else {
          throw Exception("${response.statusCode} ${response.body}");
        }
      }
    }
  }

  /// Sign up to **Too Good To Go**.
  ///
  /// The client will sign up the provider email
  /// to the **Too Good To Go** platform.
  Future<TgTgCredentials> signUp({
    required String email,
    required String name,
    required String countryId,
    required bool newsletterOptIn,
    required bool pushNotificationOptIn,
    required String deviceType,
  }) async {
    /// Email and credentials must be **not** provided.
    if (settings.email != null || settings.credentials!.isAlreadyLogged) {
      throw Exception("You are already logged in.");
    }

    /// Response body.
    Response<TgTgCredentials>? response;

    final jsonBody = <String, dynamic>{
      "email": email,
      "name": name,
      "device_type": deviceType.toUpperCase(),
      "country_id": countryId,
      "newsletter_opt_in": newsletterOptIn,
      "push_notification_opt_in": pushNotificationOptIn,
    };

    final req = Request(
      client: this,
      httpRequest: http.Request(
        "POST",
        baseUrl.resolve(signUpByEmail),
      ),
      bodyDeserializer: (body) => TgTgCredentials.fromJson(
        body as Map<String, dynamic>,
      ),
      jsonBody: jsonBody,
    );

    response = await req.go();

    if (response.isOk) {
      final loginResponse = (response.json
          as Map<String, dynamic>)["login_response"] as Map<String, dynamic>;

      final accessToken = loginResponse["access_token"] as String;
      final refreshToken = loginResponse["refresh_token"] as String;
      // ignore: avoid_dynamic_calls
      final userId = loginResponse["startup_data"]["user"]["user_id"] as String;

      final tgTgCredentials = TgTgCredentials(
        accessToken: accessToken,
        refreshToken: refreshToken,
        userId: userId,
      );

      /// Refresh token.
      settings = settings.copyWith(
        credentials: tgTgCredentials,
        lastTimeTokenRefreshed: DateTime.now(),
      );

      /// Return the [TgTgCredentials].
      return tgTgCredentials;
    } else {
      throw Exception(
        "${response.statusCode} ${response.body}",
      );
    }
  }

  /// Closes this client and frees allocated resources.
  ///
  /// Failure to close this a client might cause the dart process to hang.
  ///
  /// After this method has been called this instance must not be used any more.
  void dispose() {
    _closed = true;
    _http.close();
  }
}
