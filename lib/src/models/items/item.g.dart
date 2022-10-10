// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      itemId: json['item_id'] as String?,
      salesTaxes: (json['sales_taxes'] as List<dynamic>?)
          ?.map((e) => SalesTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxAmount: json['tax_amount'] == null
          ? null
          : Price.fromJson(json['tax_amount'] as Map<String, dynamic>),
      priceExcludingTaxes: json['price_excluding_taxes'] == null
          ? null
          : Price.fromJson(
              json['price_excluding_taxes'] as Map<String, dynamic>),
      priceIncludingTaxes: json['price_including_taxes'] == null
          ? null
          : Price.fromJson(
              json['price_including_taxes'] as Map<String, dynamic>),
      valueExcludingTaxes: json['value_excluding_taxes'] == null
          ? null
          : Price.fromJson(
              json['value_excluding_taxes'] as Map<String, dynamic>),
      valueIncludingTaxes: json['value_including_taxes'] == null
          ? null
          : Price.fromJson(
              json['value_including_taxes'] as Map<String, dynamic>),
      taxationPolicy: json['taxation_policy'] as String?,
      showSalesTaxes: json['show_sales_taxes'] as bool?,
      coverPicture: json['cover_picture'] == null
          ? null
          : Picture.fromJson(json['cover_picture'] as Map<String, dynamic>),
      logoPicture: json['logo_picture'] == null
          ? null
          : Picture.fromJson(json['logo_picture'] as Map<String, dynamic>),
      name: json['name'] as String?,
      description: json['description'] as String?,
      foodHandlingInstructions: json['food_handling_instructions'] as String?,
      canUserSupplyPackaging: json['can_user_supply_packaging'] as bool?,
      packagingOption: json['packaging_option'] as String?,
      collectionInfo: json['collection_info'] as String?,
      dietCategories: json['diet_categories'] as List<dynamic>?,
      itemCategory: json['item_category'] as String?,
      buffet: json['buffet'] as bool?,
      badges: (json['badges'] as List<dynamic>?)
          ?.map((e) => Badge.fromJson(e as Map<String, dynamic>))
          .toList(),
      positiveRatingReasons: (json['positive_rating_reasons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageOverallRating: json['average_overall_rating'] == null
          ? null
          : Rating.fromJson(
              json['average_overall_rating'] as Map<String, dynamic>),
      favoriteCount: json['favorite_count'] as int?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'item_id': instance.itemId,
      'sales_taxes': instance.salesTaxes,
      'tax_amount': instance.taxAmount,
      'price_excluding_taxes': instance.priceExcludingTaxes,
      'price_including_taxes': instance.priceIncludingTaxes,
      'value_excluding_taxes': instance.valueExcludingTaxes,
      'value_including_taxes': instance.valueIncludingTaxes,
      'taxation_policy': instance.taxationPolicy,
      'show_sales_taxes': instance.showSalesTaxes,
      'cover_picture': instance.coverPicture,
      'logo_picture': instance.logoPicture,
      'name': instance.name,
      'description': instance.description,
      'food_handling_instructions': instance.foodHandlingInstructions,
      'can_user_supply_packaging': instance.canUserSupplyPackaging,
      'packaging_option': instance.packagingOption,
      'collection_info': instance.collectionInfo,
      'diet_categories': instance.dietCategories,
      'item_category': instance.itemCategory,
      'buffet': instance.buffet,
      'badges': instance.badges,
      'positive_rating_reasons': instance.positiveRatingReasons,
      'average_overall_rating': instance.averageOverallRating,
      'favorite_count': instance.favoriteCount,
    };
