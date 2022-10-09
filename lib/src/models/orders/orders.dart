import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/orders/order.dart";

part "orders.freezed.dart";
part "orders.g.dart";

@freezed
class Orders with _$Orders {
  const factory Orders({
    DateTime? currentTime,
    bool? hasMore,
    List<Order>? orders,
  }) = _Orders;

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);
}
