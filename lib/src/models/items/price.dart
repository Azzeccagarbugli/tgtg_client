// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "price.freezed.dart";
part "price.g.dart";

/// The [Price] contains the `code`, the `minorUnits` and the `decimals` of a [Item].
@freezed
class Price with _$Price {
  const factory Price({
    String? code,
    int? minorUnits,
    int? decimals,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}
