// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "picture.freezed.dart";
part "picture.g.dart";

/// The [Picture] contains the `pictureId` and the `currentUrl` of a picture.
@freezed
class Picture with _$Picture {
  const factory Picture({
    String? pictureId,
    String? currentUrl,
  }) = _Picture;

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
