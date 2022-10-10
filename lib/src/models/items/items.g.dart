// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      item: json['item'] == null
          ? null
          : Item.fromJson(json['item'] as Map<String, dynamic>),
      store: json['store'] == null
          ? null
          : Store.fromJson(json['store'] as Map<String, dynamic>),
      displayName: json['display_name'] as String?,
      pickupLocation: json['pickup_location'] == null
          ? null
          : Location.fromJson(json['pickup_location'] as Map<String, dynamic>),
      itemsAvailable: json['items_available'] as int?,
      distance: (json['distance'] as num?)?.toDouble(),
      favorite: json['favorite'] as bool?,
      inSalesWindow: json['in_sales_window'] as bool?,
      newItem: json['new_item'] as bool?,
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'item': instance.item,
      'store': instance.store,
      'display_name': instance.displayName,
      'pickup_location': instance.pickupLocation,
      'items_available': instance.itemsAvailable,
      'distance': instance.distance,
      'favorite': instance.favorite,
      'in_sales_window': instance.inSalesWindow,
      'new_item': instance.newItem,
    };
