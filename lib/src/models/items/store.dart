import "package:freezed_annotation/freezed_annotation.dart";
import "package:tgtg_client/src/models/items/location.dart";
import "package:tgtg_client/src/models/items/picture.dart";

part "store.freezed.dart";
part "store.g.dart";

@freezed
class Store with _$Store {
  const factory Store({
    String? storeId,
    String? storeName,
    String? branch,
    String? description,
    String? website,
    Location? storeLocation,
    Picture? logoPicture,
    String? storeTimeZone,
    bool? hidden,
    int? favoriteCount,
    bool? weCare,
    double? distance,
    Picture? coverPicture,
    bool? isManufacturer,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
