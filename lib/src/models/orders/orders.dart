// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/orders/order.dart";

part "orders.freezed.dart";
part "orders.g.dart";

/// The [Orders] contains all the information about an order.
///
/// Each attribute is quite self-explanatory but if
/// you need any help feel free to [open an issue](https://github.com/Azzeccagarbugli/tgtg_client/issues).
@freezed
class Orders with _$Orders {
  const factory Orders({
    DateTime? currentTime,
    bool? hasMore,
    List<Order>? orders,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}
