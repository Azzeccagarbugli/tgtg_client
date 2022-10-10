// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/item.dart";
import "package:tgtg_client/src/models/items/location.dart";
import "package:tgtg_client/src/models/items/store.dart";

part "items.freezed.dart";
part "items.g.dart";

/// The [Items] contains all the information about a product.
///
/// The attribute `item` contains the major information of a [Item].
///
/// Each attribute is quite self-explanatory but if
/// you need any help feel free to [open an issue](https://github.com/Azzeccagarbugli/tgtg_client/issues).
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
