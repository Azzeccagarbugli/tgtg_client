import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/location.dart";
import "package:tgtg_client/src/models/items/price.dart";
import "package:tgtg_client/src/models/orders/cover_image.dart";
import "package:tgtg_client/src/models/orders/interval.dart";

part "order.freezed.dart";
part "order.g.dart";

@freezed
class Order with _$Order {
  const factory Order({
    String? orderId,
    String? state,
    DateTime? cancelUntil,
    Interval? redeemInterval,
    Interval? pickupInterval,
    String? storeTimeZone,
    int? quantity,
    Price? priceIncludingTaxes,
    Price? priceExcludingTaxes,
    Price? totalAppliedTaxes,
    List<dynamic>? salesTaxes,
    Location? pickupLocation,
    bool? canBeRated,
    bool? isRated,
    DateTime? timeOfPurchase,
    String? storeId,
    String? storeName,
    String? storeBranch,
    CoverImage? storeLogo,
    String? itemId,
    String? itemName,
    CoverImage? itemCoverImage,
    bool? isBuffet,
    bool? canUserSupplyPackaging,
    String? packagingOption,
    bool? isStoreWeCare,
    bool? canShowBestBeforeExplainer,
    bool? showSalesTaxes,
    String? orderType,
    String? foodHandlingInstructions,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
