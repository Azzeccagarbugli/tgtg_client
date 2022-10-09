import "package:tgtg_client/src/credentials.dart";
import "package:tgtg_client/src/network/network.dart";

/// Body deserializer as [typedef].
typedef BodyDeserializer<T> = T Function(dynamic body);

/// Injection [TgTgCredentials] into the header.
Map<String, String> publicActionAuthHeader(
  TgTgCredentials credentials,
  String cookie,
) {
  return {
    "Authorization": "Bearer ${credentials.accessToken}",
    "Accept": "*/*",
    "Cookie":
        "datadome=rBh1DAgThTLmDLYiMrsYkgF0ZgP1aBKtjMNMBtkzliROKPPSc.QFOTSuqmpo4jNzs0FCbxeV25TnWhd4j_OB7szkOKHbrAWc_ID_fMSTAAzWw_YUVg0BN6BK.QbxdIe",
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
