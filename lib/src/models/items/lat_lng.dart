// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "lat_lng.freezed.dart";
part "lat_lng.g.dart";

/// The [LatLng] contains the `latitude` and the `longitude` of a [Location].
@freezed
class LatLng with _$LatLng {
  const factory LatLng({
    double? longitude,
    double? latitude,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
