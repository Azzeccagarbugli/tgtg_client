// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Badge _$$_BadgeFromJson(Map<String, dynamic> json) => _$_Badge(
      badgeType: json['badge_type'] as String?,
      ratingGroup: json['rating_group'] as String?,
      percentage: json['percentage'] as int?,
      userCount: json['user_count'] as int?,
      monthCount: json['month_count'] as int?,
    );

Map<String, dynamic> _$$_BadgeToJson(_$_Badge instance) => <String, dynamic>{
      'badge_type': instance.badgeType,
      'rating_group': instance.ratingGroup,
      'percentage': instance.percentage,
      'user_count': instance.userCount,
      'month_count': instance.monthCount,
    };
