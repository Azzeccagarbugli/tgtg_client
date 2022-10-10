// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      orderId: json['order_id'] as String?,
      state: json['state'] as String?,
      cancelUntil: json['cancel_until'] == null
          ? null
          : DateTime.parse(json['cancel_until'] as String),
      redeemInterval: json['redeem_interval'] == null
          ? null
          : Interval.fromJson(json['redeem_interval'] as Map<String, dynamic>),
      pickupInterval: json['pickup_interval'] == null
          ? null
          : Interval.fromJson(json['pickup_interval'] as Map<String, dynamic>),
      storeTimeZone: json['store_time_zone'] as String?,
      quantity: json['quantity'] as int?,
      priceIncludingTaxes: json['price_including_taxes'] == null
          ? null
          : Price.fromJson(
              json['price_including_taxes'] as Map<String, dynamic>),
      priceExcludingTaxes: json['price_excluding_taxes'] == null
          ? null
          : Price.fromJson(
              json['price_excluding_taxes'] as Map<String, dynamic>),
      totalAppliedTaxes: json['total_applied_taxes'] == null
          ? null
          : Price.fromJson(json['total_applied_taxes'] as Map<String, dynamic>),
      salesTaxes: json['sales_taxes'] as List<dynamic>?,
      pickupLocation: json['pickup_location'] == null
          ? null
          : Location.fromJson(json['pickup_location'] as Map<String, dynamic>),
      canBeRated: json['can_be_rated'] as bool?,
      isRated: json['is_rated'] as bool?,
      timeOfPurchase: json['time_of_purchase'] == null
          ? null
          : DateTime.parse(json['time_of_purchase'] as String),
      storeId: json['store_id'] as String?,
      storeName: json['store_name'] as String?,
      storeBranch: json['store_branch'] as String?,
      storeLogo: json['store_logo'] == null
          ? null
          : CoverImage.fromJson(json['store_logo'] as Map<String, dynamic>),
      itemId: json['item_id'] as String?,
      itemName: json['item_name'] as String?,
      itemCoverImage: json['item_cover_image'] == null
          ? null
          : CoverImage.fromJson(
              json['item_cover_image'] as Map<String, dynamic>),
      isBuffet: json['is_buffet'] as bool?,
      canUserSupplyPackaging: json['can_user_supply_packaging'] as bool?,
      packagingOption: json['packaging_option'] as String?,
      isStoreWeCare: json['is_store_we_care'] as bool?,
      canShowBestBeforeExplainer:
          json['can_show_best_before_explainer'] as bool?,
      showSalesTaxes: json['show_sales_taxes'] as bool?,
      orderType: json['order_type'] as String?,
      foodHandlingInstructions: json['food_handling_instructions'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'order_id': instance.orderId,
      'state': instance.state,
      'cancel_until': instance.cancelUntil?.toIso8601String(),
      'redeem_interval': instance.redeemInterval,
      'pickup_interval': instance.pickupInterval,
      'store_time_zone': instance.storeTimeZone,
      'quantity': instance.quantity,
      'price_including_taxes': instance.priceIncludingTaxes,
      'price_excluding_taxes': instance.priceExcludingTaxes,
      'total_applied_taxes': instance.totalAppliedTaxes,
      'sales_taxes': instance.salesTaxes,
      'pickup_location': instance.pickupLocation,
      'can_be_rated': instance.canBeRated,
      'is_rated': instance.isRated,
      'time_of_purchase': instance.timeOfPurchase?.toIso8601String(),
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'store_branch': instance.storeBranch,
      'store_logo': instance.storeLogo,
      'item_id': instance.itemId,
      'item_name': instance.itemName,
      'item_cover_image': instance.itemCoverImage,
      'is_buffet': instance.isBuffet,
      'can_user_supply_packaging': instance.canUserSupplyPackaging,
      'packaging_option': instance.packagingOption,
      'is_store_we_care': instance.isStoreWeCare,
      'can_show_best_before_explainer': instance.canShowBestBeforeExplainer,
      'show_sales_taxes': instance.showSalesTaxes,
      'order_type': instance.orderType,
      'food_handling_instructions': instance.foodHandlingInstructions,
    };
