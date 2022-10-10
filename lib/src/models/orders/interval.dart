// ignore_for_file: public_member_api_docs

import "package:freezed_annotation/freezed_annotation.dart";

part "interval.freezed.dart";
part "interval.g.dart";

/// The [Interval] contains the `start` and the `end` of an interval.
@freezed
class Interval with _$Interval {
  const factory Interval({
    DateTime? start,
    DateTime? end,
  }) = _Interval;

  factory Interval.fromJson(Map<String, dynamic> json) =>
      _$IntervalFromJson(json);
}
