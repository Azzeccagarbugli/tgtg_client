import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/country.dart";

part "address.freezed.dart";
part "address.g.dart";

@freezed
class Address with _$Address {
  const factory Address({
    Country? country,
    String? addressLine,
    String? city,
    String? postalCode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
