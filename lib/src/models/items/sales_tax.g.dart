// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_tax.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesTax _$$_SalesTaxFromJson(Map<String, dynamic> json) => _$_SalesTax(
      taxDescription: json['tax_description'] as String?,
      taxPercentage: (json['tax_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SalesTaxToJson(_$_SalesTax instance) =>
    <String, dynamic>{
      'tax_description': instance.taxDescription,
      'tax_percentage': instance.taxPercentage,
    };
