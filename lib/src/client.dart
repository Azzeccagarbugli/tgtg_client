import "dart:developer";

import "package:http/http.dart" as http;
import "package:tgtg_client/tgtg_client.dart";

/// A client for accessing the **Too Good Too Go** API.
///
/// Http calls are made through the [http](https://pub.dev/packages/http)
/// package, which provides a platform independent client, making the
/// [TgTgClient] platform independent as well.
class TgTgClient {
  /// Creates a new instance of the [TgTgClient].
  ///
  /// [settings] must not be `null`.
  ///
  /// If no [httpClient] is provided, one is created.
  TgTgClient({
    required this.settings,
    http.Client? httpClient,
  }) : _http = httpClient ?? http.Client();

  /// An empty client just to allow the [signUp].
  TgTgClient.empty() : this(settings: TgTgSettings.custom());

  /// The URI for the base url of the Too Good Too Go API.
  final Uri baseUrl = Uri.parse(baseUrlTgTg);

  /// The [TgTgSettings] used by this client.
  final TgTgSettings settings;

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

  /// Refreshes the access token.
  Future<void> _refreshToken() async {
    /// Refresh token
    final ltrt = settings.lastTimeTokenRefreshed;

    if (ltrt != null) {
      /// Boolean condition to check if the token is expired.
      final check = DateTime.now().difference(ltrt).inSeconds <=
          settings.accessTokenLifetime!;

      if (check) {
        return;
      }

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
        final c = settings.credentials!;
        final refreshResponse = response.json as Map<String, dynamic>;

        c.accessToken = refreshResponse["access_token"] as String;
        c.refreshToken = refreshResponse["refresh_token"] as String;
        settings.lastTimeTokenRefreshed = DateTime.now();
      } else {
        throw Exception("${response.statusCode} ${response.body}");
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
        // ignore: avoid_log
        log(
          "\nCheck your mailbox on PC to continue... "
          "(Mailbox on mobile won't work, if you have installed Too Good Too Go app.)\n",
        );
        await Future<dynamic>.delayed(pollingWaitTime);
        continue;
      } else if (response.isOk) {
        // ignore: avoid_log
        log("Logged In!");
        final loginResponse = response.json as Map<String, dynamic>;
        final c = settings.credentials!;

        c.accessToken = loginResponse["access_token"] as String;
        c.refreshToken = loginResponse["refresh_token"] as String;
        // ignore: avoid_dynamic_calls
        c.userId = loginResponse["startup_data"]["user"]["user_id"] as String;

        /// Refresh token.
        settings.lastTimeTokenRefreshed = DateTime.now();
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

  /// Login to the **Too Good Too Go** API.
  ///
  /// The client will retrive the right credentials to
  /// login to the API and will populate the header of
  /// each future request.
  Future<void> login() async {
    /// Email from the [TgTgSettings].
    final email = settings.email;

    /// Credentials from the [TgTgSettings].
    final credentials = settings.credentials;

    if (email == null && credentials == null) {
      throw Exception(
        "Either one of credentials or email fields must be provided in order to login.",
      );
    }

    /// Response body.
    Response<TgTgCredentials>? response;

    if (credentials != null && credentials.isAlreadyLogged) {
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
            "This email $email is not linked to a Too Good Too Go account. "
            "Please signup with this email first.",
          );
        } else if (firstLoginReponse["state"] == "WAIT") {
          await _startPolling(
            pollingId: firstLoginReponse["polling_id"] as String,
          );
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

  /// Sign up to **Too Good Too Go**.
  ///
  /// The client will sign up the provider email
  /// to the **Too Good Too Go** platform.
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

      /// Refresh token.
      settings.lastTimeTokenRefreshed = DateTime.now();

      final tgTgCredentials = TgTgCredentials(
        accessToken: accessToken,
        refreshToken: refreshToken,
        userId: userId,
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
