import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/location.dart";
import "package:tgtg_client/src/models/picture.dart";

part "store.freezed.dart";
part "store.g.dart";

@freezed
class Store with _$Store {
  const factory Store({
    String? storeId,
    String? storeName,
    String? branch,
    String? description,
    String? taxIdentifier,
    String? website,
    Location? storeLocation,
    Picture? logoPicture,
    String? storeTimeZone,
    bool? hidden,
    int? favoriteCount,
    bool? weCare,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
