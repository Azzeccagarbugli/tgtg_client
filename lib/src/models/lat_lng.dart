import "package:freezed_annotation/freezed_annotation.dart";

part "lat_lng.freezed.dart";
part "lat_lng.g.dart";

@freezed
class LatLng with _$LatLng {
  const factory LatLng({
    double? longitude,
    double? latitude,
  }) = _LatLng;

  factory LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);
}
