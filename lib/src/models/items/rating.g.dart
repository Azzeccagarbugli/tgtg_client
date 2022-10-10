// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      averageOverallRating:
          (json['average_overall_rating'] as num?)?.toDouble(),
      ratingCount: json['rating_count'] as int?,
      monthCount: json['month_count'] as int?,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'average_overall_rating': instance.averageOverallRating,
      'rating_count': instance.ratingCount,
      'month_count': instance.monthCount,
    };
