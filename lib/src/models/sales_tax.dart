import 'package:freezed_annotation/freezed_annotation.dart';

part "sales_tax.freezed.dart";
part "sales_tax.g.dart";

@freezed
class SalesTax with _$SalesTax {
  const factory SalesTax({
    String? taxDescription,
    double? taxPercentage,
  }) = _SalesTax;

  factory SalesTax.fromJson(Map<String, dynamic> json) =>
      _$SalesTaxFromJson(json);
}
