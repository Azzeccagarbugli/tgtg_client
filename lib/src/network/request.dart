import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:tgtg_client/src/network/response.dart';
import 'package:tgtg_client/src/network/utils.dart';
import 'package:tgtg_client/src/tgtg_client.dart';

/// A request holds all the information necessary to make a request to the API.
///
/// [T] is the type of the deserialized body.
///
/// A request is immutable and can be executed multiple times, each time
/// returning a new [Response]. To execute it and receive a [Response], call
/// [go].
///
/// The internal state of [httpRequest] and [jsonBody] should not be mutated.
@immutable
class Request<T> extends Equatable {
  /// Creates a new request.
  const Request({
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

  /// Execute this [Request] and return its [Response].
  ///
  /// Might reject with [http.ClientException] during a network failure.
  Future<Response<T>> go() async {
    if (client.isClosed) {
      throw Exception(
        'Cannot execute request because TgTgClient has already been closed',
      );
    }

    final httpRequest = _prepareRequest();
    http.StreamedResponse httpResponse;
    String body;
    dynamic json;
    T? data;

    // print('Sending request:\n${printRequest(httpRequest)}\n');
    // print('Sending request:\n${printRequest(httpRequest)}');
    // print('Received response:\n${printResponse(httpResponse)}\n');
    // print('Received response:\n${printResponse(httpResponse)}');

    httpResponse = await client.httpClient.send(httpRequest);

    body = await httpResponse.stream.bytesToString();

    try {
      json = jsonDecode(body);
    } catch (e) {
      // ignore: avoid_catches_without_on_clauses
    }

    if (httpResponse.statusCode < 400 &&
        json != null &&
        bodyDeserializer != null) {
      data = bodyDeserializer!(json);
    }

    return Response(
      request: this,
      httpRequest: httpRequest,
      httpResponse: httpResponse,
      body: body,
      json: json,
      data: data,
    );
  }

  http.Request _prepareRequest() {
    final request = _copyRequest();

    if (jsonBody != null) {
      request.body = jsonEncode(jsonBody);
    }

    request.headers.addAll(_createHeaders());

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

  Map<String, String> _createHeaders() {
    final headers = <String, String>{
      "User-Agent": client.settings.userAgent!,
      "Accept-Language": client.settings.language!,
      "Accept-Encoding": "gzip",
    };

    if (jsonBody != null) {
      headers.addAll({'Content-Type': 'application/json; charset=utf-8'});
    }

    final credentials = client.settings.credentials;

    if (credentials != null && credentials.isAlreadyLogged) {
      headers.addAll(publicActionAuthHeader(client.settings.credentials!));
    }

    return headers;
  }

  @override
  String toString() {
    return 'Request{method: ${httpRequest.method}, url: ${httpRequest.url}}';
  }

  @override
  List<Object?> get props => [client, httpRequest, jsonBody, bodyDeserializer];
}
