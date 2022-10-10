// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/address.dart";
import "package:tgtg_client/src/models/items/lat_lng.dart";

part "location.freezed.dart";
part "location.g.dart";

/// The [Location] contains the relevant like the [Address] and the [LatLng].
@freezed
class Location with _$Location {
  const factory Location({
    Address? address,
    LatLng? location,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
