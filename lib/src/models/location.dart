import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/address.dart";
import "package:tgtg_client/src/models/lat_lng.dart";

part "location.freezed.dart";
part "location.g.dart";

@freezed
class Location with _$Location {
  const factory Location({
    Address? address,
    LatLng? location,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
