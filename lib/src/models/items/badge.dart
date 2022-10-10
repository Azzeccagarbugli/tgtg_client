// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "badge.freezed.dart";
part "badge.g.dart";

/// The [Badge] gives information about the [Item].
@freezed
class Badge with _$Badge {
  const factory Badge({
    String? badgeType,
    String? ratingGroup,
    int? percentage,
    int? userCount,
    int? monthCount,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}
