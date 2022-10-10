// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/badge.dart";
import "package:tgtg_client/src/models/items/picture.dart";
import "package:tgtg_client/src/models/items/price.dart";
import "package:tgtg_client/src/models/items/rating.dart";
import "package:tgtg_client/src/models/items/sales_tax.dart";

part "item.freezed.dart";
part "item.g.dart";

/// The [Item] contains all the information about a item itself.
///
/// See the [Items] class for more information.
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
