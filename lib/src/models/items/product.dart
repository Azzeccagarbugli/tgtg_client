// ignore_for_file: public_member_api_docs, invalid_annotation_target

import "dart:math";

import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/badge.dart";
import "package:tgtg_client/src/models/items/picture.dart";
import "package:tgtg_client/src/models/items/price.dart";
import "package:tgtg_client/src/models/items/rating.dart";
import "package:tgtg_client/src/models/items/sales_tax.dart";

part "product.freezed.dart";
part "product.g.dart";

/// The [Item] contains all the information about a item itself.
///
/// See the [Items] class for more information.
@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "item_id") String? productId,
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
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  double? get finalPrice {
    if (priceIncludingTaxes != null) {
      if (priceIncludingTaxes?.minorUnits != null &&
          priceIncludingTaxes?.decimals != null) {
        final units = priceIncludingTaxes!.minorUnits!;
        final decimals = priceIncludingTaxes!.decimals!;
        return units / pow(10, decimals);
      }
      return null;
    } else {
      return null;
    }
  }

  String? get finalPriceWithCurrency {
    if (finalPrice != null) {
      return "$finalPrice ${priceIncludingTaxes!.code}";
    } else {
      return null;
    }
  }
}
