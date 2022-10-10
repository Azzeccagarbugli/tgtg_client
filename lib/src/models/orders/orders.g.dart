// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Orders _$$_OrdersFromJson(Map<String, dynamic> json) => _$_Orders(
      currentTime: json['current_time'] == null
          ? null
          : DateTime.parse(json['current_time'] as String),
      hasMore: json['has_more'] as bool?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrdersToJson(_$_Orders instance) => <String, dynamic>{
      'current_time': instance.currentTime?.toIso8601String(),
      'has_more': instance.hasMore,
      'orders': instance.orders,
    };
