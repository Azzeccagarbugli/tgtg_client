import "package:http/http.dart" as http;
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
    Logger(
      title: "Active orders",
      description: "Fetching is started...",
      level: Level.debug,
      isActive: client.enableLogging,
    ).log();
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

    if (res.statusCode == 200) {
      Logger(
        title: "Orders",
        description: "The active orders are fetched successfully!",
        level: Level.info,
        isActive: client.enableLogging,
      ).log();
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
    Logger(
      title: "Inactive orders",
      description: "Fetching is started...",
      level: Level.debug,
      isActive: client.enableLogging,
    ).log();
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

    if (res.statusCode == 200) {
      Logger(
        title: "Orders",
        description: "The inactive orders are fetched successfully!",
        level: Level.info,
        isActive: client.enableLogging,
      ).log();
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
