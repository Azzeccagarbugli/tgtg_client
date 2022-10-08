import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/badge.dart";
import "package:tgtg_client/src/models/picture.dart";
import "package:tgtg_client/src/models/price.dart";

part "item.freezed.dart";
part "item.g.dart";

@freezed
class Item with _$Item {
  const factory Item({
    String? itemId,
    Price? price,
    List<dynamic>? salesTaxes,
    Price? taxAmount,
    Price? priceExcludingTaxes,
    Price? priceIncludingTaxes,
    Price? valueExcludingTaxes,
    Price? valueIncludingTaxes,
    String? taxationPolicy,
    bool? showSalesTaxes,
    Price? value,
    Picture? coverPicture,
    Picture? logoPicture,
    String? name,
    String? description,
    bool? canUserSupplyPackaging,
    String? packagingOption,
    String? collectionInfo,
    List<dynamic>? dietCategories,
    String? itemCategory,
    List<Badge>? badges,
    int? favoriteCount,
    bool? buffet,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
