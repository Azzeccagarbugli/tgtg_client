import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/badge.dart";
import "package:tgtg_client/src/models/picture.dart";
import "package:tgtg_client/src/models/price.dart";
import "package:tgtg_client/src/models/rating.dart";
import "package:tgtg_client/src/models/sales_tax.dart";

part "item.freezed.dart";
part "item.g.dart";

@freezed
class Item with _$Item {
  const factory Item({
    String? itemId,
    List<SalesTax>? salesTaxes,
    Price? taxAmount,
    Price? priceExcludingTaxes,
    Price? priceIncludingTaxes,
    Price? valueExcludingTaxes,
    Price? valueIncludingTaxes,
    String? taxationPolicy,
    bool? showSalesTaxes,
    Picture? coverPicture,
    Picture? logoPicture,
    String? name,
    String? description,
    String? foodHandlingInstructions,
    bool? canUserSupplyPackaging,
    String? packagingOption,
    String? collectionInfo,
    List<dynamic>? dietCategories,
    String? itemCategory,
    bool? buffet,
    List<Badge>? badges,
    List<String>? positiveRatingReasons,
    Rating? averageOverallRating,
    int? favoriteCount,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
