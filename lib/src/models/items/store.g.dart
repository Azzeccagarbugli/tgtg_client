// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Store _$$_StoreFromJson(Map<String, dynamic> json) => _$_Store(
      storeId: json['store_id'] as String?,
      storeName: json['store_name'] as String?,
      branch: json['branch'] as String?,
      description: json['description'] as String?,
      website: json['website'] as String?,
      storeLocation: json['store_location'] == null
          ? null
          : Location.fromJson(json['store_location'] as Map<String, dynamic>),
      logoPicture: json['logo_picture'] == null
          ? null
          : Picture.fromJson(json['logo_picture'] as Map<String, dynamic>),
      storeTimeZone: json['store_time_zone'] as String?,
      hidden: json['hidden'] as bool?,
      favoriteCount: json['favorite_count'] as int?,
      weCare: json['we_care'] as bool?,
      distance: (json['distance'] as num?)?.toDouble(),
      coverPicture: json['cover_picture'] == null
          ? null
          : Picture.fromJson(json['cover_picture'] as Map<String, dynamic>),
      isManufacturer: json['is_manufacturer'] as bool?,
    );

Map<String, dynamic> _$$_StoreToJson(_$_Store instance) => <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'branch': instance.branch,
      'description': instance.description,
      'website': instance.website,
      'store_location': instance.storeLocation,
      'logo_picture': instance.logoPicture,
      'store_time_zone': instance.storeTimeZone,
      'hidden': instance.hidden,
      'favorite_count': instance.favoriteCount,
      'we_care': instance.weCare,
      'distance': instance.distance,
      'cover_picture': instance.coverPicture,
      'is_manufacturer': instance.isManufacturer,
    };
