import "package:tgtg_client/src/models/items/items.dart";
import "package:tgtg_client/src/models/orders/orders.dart";

/// Items key for [Items].
const _itemsKey = "items";

/// Deserializes the [body] into a list of [Items].
List<Items> itemsFromJson(Map<String, dynamic> body) => List<Items>.from(
      // ignore: avoid_dynamic_calls
      (body[_itemsKey]).map(
        // ignore: inference_failure_on_untyped_parameter
        (x) => Items.fromJson(
          x as Map<String, dynamic>,
        ),
      ) as Iterable<dynamic>,
    );

/// Deserializes the [body] into a list of [Orders].
Orders ordersFromJson(Map<String, dynamic> body) => Orders.fromJson(body);
