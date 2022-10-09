import "dart:developer";

import "package:http/http.dart" as http;
import "package:tgtg_client/src/models/items/items.dart";
import "package:tgtg_client/tgtg_client.dart";

/// Provides access to resources related to [Items].
class TgTgItems {
  /// Creates a new instance which belongs to [client].
  TgTgItems(this.client) : baseUrl = client.baseUrl.resolve(apiItem);

  /// The parent [TgTgClient].
  final TgTgClient client;

  /// The base url for all endpoints for [Items].
  final Uri baseUrl;

  /// Fetch all the [Items].
  ///
  /// By default it will **only** get your favorites.
  Future<List<Items>> getAll({
    double? latitude = 0.0,
    double? longitude = 0.0,
    double? radius = 21,
    int? pageSize = 20,
    int? page = 1,
    bool? discover = false,
    bool? favoritesOnly = true,
    List<String>? itemCategories,
    List<String>? dietCategories,
    String? pickupEarliest,
    String? pickupLatest,
    String? searchPhrase,
    bool? withStockOnly = false,
    bool? hiddenOnly = false,
    bool? weCareOnly = false,
  }) async {
    await client.login();

    final jsonBody = <String, dynamic>{
      "user_id": client.settings.credentials!.userId,
      "origin": {"latitude": latitude, "longitude": longitude},
      "radius": radius,
      "page_size": pageSize,
      "page": page,
      "discover": discover,
      "favorites_only": favoritesOnly,
      "item_categories": itemCategories ?? [],
      "diet_categories": dietCategories ?? [],
      "pickup_earliest": pickupEarliest,
      "pickup_latest": pickupLatest,
      "search_phrase": searchPhrase,
      "with_stock_only": withStockOnly,
      "hidden_only": hiddenOnly,
      "we_care_only": weCareOnly,
    };

    final req = Request(
      client: client,
      httpRequest: http.Request("POST", baseUrl),
      bodyDeserializer: (body) => itemsFromJson(body as Map<String, dynamic>),
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
        "Items not fetched - Stauts code: ${res.statusCode}",
      );
    }
  }

  /// Fetch an [Item] by a specfied id.
  Future<Items> getById({required String id}) async {
    await client.login();

    final url = baseUrl.resolve(id);

    final req = Request(
      client: client,
      httpRequest: http.Request("POST", url),
      bodyDeserializer: (body) => Items.fromJson(body as Map<String, dynamic>),
      jsonBody: {
        "user_id": client.settings.credentials!.userId,
        "origin": null,
      },
    );

    final res = await req.go();

    if (res.isOk) {
      return req.goAndGet();
    } else if (res.statusCode == 403) {
      throw Exception(
        "Not authorized, probably you should check the app and confirm your identity.",
      );
    } else {
      throw Exception(
        "Item not present (check the inserted code) - Stauts code: ${res.statusCode}",
      );
    }
  }

  /// Set an [Item] as a favorite.
  Future<bool> setFavorite({
    required String id,
    required bool isFavorite,
  }) async {
    await client.login();

    final url = baseUrl.resolve("$id/setFavorite");

    final req = Request<bool>(
      client: client,
      httpRequest: http.Request("POST", url),
      jsonBody: {
        "user_id": client.settings.credentials!.userId,
        "is_favorite": isFavorite,
      },
    );

    final res = await req.go();

    if (res.isOk) {
      return true;
    } else if (res.statusCode == 403) {
      throw Exception(
        "Not authorized, probably you should check the app and confirm your identity.",
      );
    } else {
      throw Exception(
        "Item not present (check the inserted code) - Stauts code: ${res.statusCode}",
      );
    }
  }
}
