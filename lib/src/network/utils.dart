import 'package:http/http.dart' as http;
import 'package:tgtg_client/src/network/request.dart';
import 'package:tgtg_client/src/tgtg_credentials.dart';

Map<String, String> publicActionAuthHeader(TgTgCredentials credentials) {
  return {'Authorization': 'Client-ID ${credentials.accessToken}'};
}

Map<String, String> sanitizeHeaders(Map<String, String> headers) {
  return headers.map((key, value) {
    final isAuthorization = key.toLowerCase() == 'authorization';
    return MapEntry(key, isAuthorization ? 'HIDDEN' : value);
  });
}

String printRequest(http.Request request) {
  return '''
${request.method} ${request.url}
${printHeaders(sanitizeHeaders(request.headers))}
''';
}

String printResponse(http.BaseResponse response) {
  return '''
${response.statusCode} ${response.reasonPhrase}
${printHeaders(response.headers)}
''';
}

String printHeaders(Map<String, String> headers) {
  return headers.entries
      .map((header) => '${header.key}: ${header.value}')
      .join('\n');
}

/// Extension on [Request].
extension RequestExtension<T> on Request<T> {
  /// Executes this request and returns the response's data, in one call.
  ///
  /// See: [Request.go], [Response.get]
  Future<T> goAndGet() async {
    return (await go()).get();
  }
}

typedef BodyDeserializer<T> = T Function(dynamic body);
