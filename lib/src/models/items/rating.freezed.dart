// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  double? get averageOverallRating => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  int? get monthCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call({double? averageOverallRating, int? ratingCount, int? monthCount});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? averageOverallRating = freezed,
    Object? ratingCount = freezed,
    Object? monthCount = freezed,
  }) {
    return _then(_value.copyWith(
      averageOverallRating: averageOverallRating == freezed
          ? _value.averageOverallRating
          : averageOverallRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      monthCount: monthCount == freezed
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  $Res call({double? averageOverallRating, int? ratingCount, int? monthCount});
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, (v) => _then(v as _$_Rating));

  @override
  _$_Rating get _value => super._value as _$_Rating;

  @override
  $Res call({
    Object? averageOverallRating = freezed,
    Object? ratingCount = freezed,
    Object? monthCount = freezed,
  }) {
    return _then(_$_Rating(
      averageOverallRating: averageOverallRating == freezed
          ? _value.averageOverallRating
          : averageOverallRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: ratingCount == freezed
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      monthCount: monthCount == freezed
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating(
      {this.averageOverallRating, this.ratingCount, this.monthCount});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final double? averageOverallRating;
  @override
  final int? ratingCount;
  @override
  final int? monthCount;

  @override
  String toString() {
    return 'Rating(averageOverallRating: $averageOverallRating, ratingCount: $ratingCount, monthCount: $monthCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            const DeepCollectionEquality()
                .equals(other.averageOverallRating, averageOverallRating) &&
            const DeepCollectionEquality()
                .equals(other.ratingCount, ratingCount) &&
            const DeepCollectionEquality()
                .equals(other.monthCount, monthCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(averageOverallRating),
      const DeepCollectionEquality().hash(ratingCount),
      const DeepCollectionEquality().hash(monthCount));

  @JsonKey(ignore: true)
  @override
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {final double? averageOverallRating,
      final int? ratingCount,
      final int? monthCount}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  double? get averageOverallRating;
  @override
  int? get ratingCount;
  @override
  int? get monthCount;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
