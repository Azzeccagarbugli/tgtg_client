// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "sales_tax.freezed.dart";
part "sales_tax.g.dart";

/// The [SalesTax] contains the `taxDescription` and the `taxPercentage` of a sales tax.
@freezed
class SalesTax with _$SalesTax {
  const factory SalesTax({
    String? taxDescription,
    double? taxPercentage,
  }) = _SalesTax;

  factory SalesTax.fromJson(Map<String, dynamic> json) =>
      _$SalesTaxFromJson(json);
}
