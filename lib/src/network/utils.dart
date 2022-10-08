import "package:tgtg_client/src/network/request.dart";
import "package:tgtg_client/src/tgtg_credentials.dart";

/// Body deserializer as [typedef].
typedef BodyDeserializer<T> = T Function(dynamic body);

/// Injection [TgTgCredentials] into the header.
Map<String, String> publicActionAuthHeader(TgTgCredentials credentials) {
  return {"Authorization": "Bearer ${credentials.accessToken}"};
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
