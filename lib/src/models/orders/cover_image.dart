import "package:freezed_annotation/freezed_annotation.dart";

part "cover_image.freezed.dart";
part "cover_image.g.dart";

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
