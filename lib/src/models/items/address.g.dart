// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      addressLine: json['address_line'] as String?,
      city: json['city'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'country': instance.country,
      'address_line': instance.addressLine,
      'city': instance.city,
      'postal_code': instance.postalCode,
    };
