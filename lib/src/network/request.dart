import "dart:convert";
import "dart:math";

import "package:http/http.dart" as http;
import "package:tgtg_client/src/client.dart";
import "package:tgtg_client/src/helpers/helpers.dart";
import "package:tgtg_client/src/network/response.dart";
import "package:tgtg_client/src/network/utils.dart";

/// A request holds all the information necessary to make a request to the API.
///
/// [T] is the type of the deserialized body.
///
/// A request is immutable and can be executed multiple times, each time
/// returning a new [Response]. To execute it and receive a [Response], call
/// [go].
///
/// The internal state of [httpRequest] and [jsonBody] should not be mutated.
class Request<T> {
  /// Creates a new request.
  Request({
    required this.client,
    required this.httpRequest,
    this.jsonBody,
    this.bodyDeserializer,
  });

  /// The [TgTgClient] this request was created with.
  final TgTgClient client;

  /// The [http.Request], as built by the endpoint, which created this request.
  ///
  /// The [http.Request] actually sent, might be different and is available
  /// through [Response.httpRequest].
  final http.Request httpRequest;

  /// The common dart json representation of the request body.
  ///
  /// This value will be encoded with [JsonEncoder].
  final dynamic jsonBody;

  /// The function used to transform the json response into [T].
  final BodyDeserializer<T>? bodyDeserializer;

  /// The [http.Response] of the last request.
  http.StreamedResponse? httpResponse;

  /// Updates the cookie in [request] with the one in [response].
  String _updateCookie(
    http.StreamedResponse? response,
    Map<String, String> headers,
  ) {
    if (response != null) {
      final rawCookie = response.headers["set-cookie"];
      if (rawCookie != null) {
        final index = rawCookie.indexOf(";");
        final cookie = rawCookie.substring(0, index);

        return (index == -1) ? rawCookie : cookie;
      }
    }

    return "Empty";
  }

  /// Execute this [Request] and return its [Response].
  ///
  /// Might reject with [http.ClientException] during a network failure.
  Future<Response<T>> go() async {
    if (client.isClosed) {
      throw Exception(
        "Cannot execute request because TgTgClient has already been closed",
      );
    }

    final httpRequest = await _prepareRequest();

    String body;
    dynamic json;
    T? data;
    httpResponse = await client.httpClient.send(httpRequest);

    body = await httpResponse!.stream.bytesToString();

    try {
      json = jsonDecode(body);
    } catch (e) {
      // ignore: avoid_catches_without_on_clauses
    }

    if (httpResponse!.statusCode < 400 &&
        json != null &&
        bodyDeserializer != null) {
      data = bodyDeserializer!(json);
    }

    return Response(
      request: this,
      httpRequest: httpRequest,
      httpResponse: httpResponse!,
      body: body,
      json: json,
      data: data,
    );
  }

  Future<http.Request> _prepareRequest() async {
    final request = _copyRequest();

    if (jsonBody != null) {
      request.body = jsonEncode(jsonBody);
    }

    final userAgent = await _getUserAgent();

    request.headers.addAll(_createHeaders(
      userAgent: userAgent,
    ));

    return request;
  }

  http.Request _copyRequest() {
    final request = http.Request(httpRequest.method, httpRequest.url);
    request.headers.addAll(httpRequest.headers);
    request.maxRedirects = httpRequest.maxRedirects;
    request.followRedirects = httpRequest.followRedirects;
    request.persistentConnection = httpRequest.persistentConnection;
    request.encoding = httpRequest.encoding;
    request.bodyBytes = httpRequest.bodyBytes;
    return request;
  }

  Map<String, String> _createHeaders({required String userAgent}) {
    final headers = <String, String>{
      "User-Agent": userAgent,
      "Accept-Language": client.settings.language!,
      "Accept-Encoding": "gzip",
    };

    if (jsonBody != null) {
      headers.addAll({
        "Content-Type": "application/json",
      });
    }

    final credentials = client.settings.credentials;

    /// Cookie stored for the following requests.
    final cookie = _updateCookie(httpResponse, httpRequest.headers);

    if (credentials != null && credentials.isAlreadyLogged) {
      headers.addAll(publicActionAuthHeader(
        client.settings.credentials!,
        cookie,
      ));
    }

    return headers;
  }

  /// Scraps the Play Store to get the latest version of the app.
  Future<String> _getUserAgent() async {
    final version = await GooglePlayScraper().getLastApkVersion();

    if (version != null) {
      final index = Random().nextInt(userAgents().length);
      final newUserAgent = userAgents(version: version)[index];
      return newUserAgent;
    }

    return getDefaultUserAgent();
  }

  @override
  String toString() {
    return "Request{method: ${httpRequest.method}, url: ${httpRequest.url}}";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Request<T> &&
        other.client == client &&
        other.httpRequest == httpRequest &&
        other.jsonBody == jsonBody &&
        other.bodyDeserializer == bodyDeserializer;
  }

  @override
  int get hashCode {
    return client.hashCode ^
        httpRequest.hashCode ^
        jsonBody.hashCode ^
        bodyDeserializer.hashCode;
  }
}
