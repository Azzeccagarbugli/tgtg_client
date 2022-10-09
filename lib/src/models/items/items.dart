import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/item.dart";
import "package:tgtg_client/src/models/items/location.dart";
import "package:tgtg_client/src/models/items/store.dart";

part "items.freezed.dart";
part "items.g.dart";

@freezed
class Items with _$Items {
  const factory Items({
    Item? item,
    Store? store,
    String? displayName,
    Location? pickupLocation,
    int? itemsAvailable,
    double? distance,
    bool? favorite,
    bool? inSalesWindow,
    bool? newItem,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
