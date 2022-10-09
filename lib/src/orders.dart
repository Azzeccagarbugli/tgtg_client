import "dart:developer";

import "package:http/http.dart" as http;
import "package:tgtg_client/src/models/orders/orders.dart";
import "package:tgtg_client/tgtg_client.dart";

/// Provides access to resources related to [Orders].
class TgTgOrders {
  /// Creates a new instance which belongs to [client].
  TgTgOrders(this.client) : baseUrl = client.baseUrl.resolve(activeOrder);

  /// The parent [TgTgClient].
  final TgTgClient client;

  /// The base url for all endpoints for [Orders].
  final Uri baseUrl;

  /// Fetch all the active [Orders].
  ///
  /// It will **only** get your active orders.
  Future<Orders> getActive() async {
    await client.login();

    final jsonBody = <String, dynamic>{
      "user_id": client.settings.credentials!.userId,
    };

    final req = Request(
      client: client,
      httpRequest: http.Request("POST", baseUrl),
      bodyDeserializer: (body) => ordersFromJson(body as Map<String, dynamic>),
      jsonBody: jsonBody,
    );

    final res = await req.go();

    log(res.httpRequest.toString());

    if (res.statusCode == 200) {
      return req.goAndGet();
    } else if (res.statusCode == 403) {
      throw Exception(
        "Not authorized, probably you should check the app and confirm your identity.",
      );
    } else {
      throw Exception(
        "Orders not fetched - Stauts code: ${res.statusCode}",
      );
    }
  }

  /// Fetch all the inactive [Orders].
  ///
  /// It will **only** get your inactive orders.
  Future<Orders> getInactive({
    int? page = 0,
    int? pageSize = 20,
  }) async {
    await client.login();
    final url = baseUrl.replace(
      path: "/api/$inactiveOrder",
    );

    final jsonBody = <String, dynamic>{
      "user_id": client.settings.credentials!.userId,
      "paging": {
        "page": page,
        "size": pageSize,
      },
    };

    final req = Request(
      client: client,
      httpRequest: http.Request("POST", url),
      bodyDeserializer: (body) => ordersFromJson(body as Map<String, dynamic>),
      jsonBody: jsonBody,
    );

    final res = await req.go();

    log(res.httpRequest.toString());

    if (res.statusCode == 200) {
      return req.goAndGet();
    } else if (res.statusCode == 403) {
      throw Exception(
        "Not authorized, probably you should check the app and confirm your identity.",
      );
    } else {
      throw Exception(
        "Orders not fetched - Stauts code: ${res.statusCode}",
      );
    }
  }
}
