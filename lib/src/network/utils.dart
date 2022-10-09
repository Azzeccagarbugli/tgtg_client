import "package:tgtg_client/src/credentials.dart";
import "package:tgtg_client/src/network/request.dart";

/// Body deserializer as [typedef].
typedef BodyDeserializer<T> = T Function(dynamic body);

/// Injection [TgTgCredentials] into the header.
Map<String, String> publicActionAuthHeader(TgTgCredentials credentials) {
  return {
    "Authorization": "Bearer ${credentials.accessToken}",
    "Cookie":
        "datadome=jTGS2lmxQum5kuByEXWzP-w5YLhfLKx9u-IIO9WDKcYFVXm85HKFwr3EJRb4FyYvK69w5_xQ_pUKirMshTtgvSU1PUgC6mdeBiEno8X5lvFlT_E-dKez5ZL6OBD3RKQ",
    "Accept": "*/*",
    "Connection": "keep-alive",
    "Cache-Control": "no-cache",
  };
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
