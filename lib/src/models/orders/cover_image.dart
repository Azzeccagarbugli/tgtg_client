// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "cover_image.freezed.dart";
part "cover_image.g.dart";

/// The [CoverImage] contains the `pictureId` and
/// the `currentUrl` of a cover image.
///
/// Moreover the attribute `isAutomaticallyCreated`
/// indicates if the cover image was created automatically.
@freezed
class CoverImage with _$CoverImage {
  const factory CoverImage({
    String? pictureId,
    String? currentUrl,
    bool? isAutomaticallyCreated,
  }) = _ItemCoverImage;

  factory CoverImage.fromJson(Map<String, dynamic> json) =>
      _$CoverImageFromJson(json);
}
