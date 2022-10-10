// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "country.freezed.dart";
part "country.g.dart";

/// The [Country] contains the `isoCode` and the `name` of a nation.
@freezed
class Country with _$Country {
  const factory Country({
    String? isoCode,
    String? name,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
