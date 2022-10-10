// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'badge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  String? get badgeType => throw _privateConstructorUsedError;
  String? get ratingGroup => throw _privateConstructorUsedError;
  int? get percentage => throw _privateConstructorUsedError;
  int? get userCount => throw _privateConstructorUsedError;
  int? get monthCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res>;
  $Res call(
      {String? badgeType,
      String? ratingGroup,
      int? percentage,
      int? userCount,
      int? monthCount});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res> implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  final Badge _value;
  // ignore: unused_field
  final $Res Function(Badge) _then;

  @override
  $Res call({
    Object? badgeType = freezed,
    Object? ratingGroup = freezed,
    Object? percentage = freezed,
    Object? userCount = freezed,
    Object? monthCount = freezed,
  }) {
    return _then(_value.copyWith(
      badgeType: badgeType == freezed
          ? _value.badgeType
          : badgeType // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingGroup: ratingGroup == freezed
          ? _value.ratingGroup
          : ratingGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int?,
      monthCount: monthCount == freezed
          ? _value.monthCount
          : monthCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$_BadgeCopyWith(_$_Badge value, $Res Function(_$_Badge) then) =
      __$$_BadgeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? badgeType,
      String? ratingGroup,
      int? percentage,
      int? userCount,
      int? monthCount});
}

/// @nodoc
class __$$_BadgeCopyWithImpl<$Res> extends _$BadgeCopyWithImpl<$Res>
    implements _$$_BadgeCopyWith<$Res> {
  __$$_BadgeCopyWithImpl(_$_Badge _value, $Res Function(_$_Badge) _then)
      : super(_value, (v) => _then(v as _$_Badge));

  @override
  _$_Badge get _value => super._value as _$_Badge;

  @override
  $Res call({
    Object? badgeType = freezed,
    Object? ratingGroup = freezed,
    Object? percentage = freezed,
    Object? userCount = freezed,
    Object? monthCount = freezed,
  }) {
    return _then(_$_Badge(
      badgeType: badgeType == freezed
          ? _value.badgeType
          : badgeType // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingGroup: ratingGroup == freezed
          ? _value.ratingGroup
          : ratingGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int?,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
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
class _$_Badge implements _Badge {
  const _$_Badge(
      {this.badgeType,
      this.ratingGroup,
      this.percentage,
      this.userCount,
      this.monthCount});

  factory _$_Badge.fromJson(Map<String, dynamic> json) =>
      _$$_BadgeFromJson(json);

  @override
  final String? badgeType;
  @override
  final String? ratingGroup;
  @override
  final int? percentage;
  @override
  final int? userCount;
  @override
  final int? monthCount;

  @override
  String toString() {
    return 'Badge(badgeType: $badgeType, ratingGroup: $ratingGroup, percentage: $percentage, userCount: $userCount, monthCount: $monthCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Badge &&
            const DeepCollectionEquality().equals(other.badgeType, badgeType) &&
            const DeepCollectionEquality()
                .equals(other.ratingGroup, ratingGroup) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage) &&
            const DeepCollectionEquality().equals(other.userCount, userCount) &&
            const DeepCollectionEquality()
                .equals(other.monthCount, monthCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(badgeType),
      const DeepCollectionEquality().hash(ratingGroup),
      const DeepCollectionEquality().hash(percentage),
      const DeepCollectionEquality().hash(userCount),
      const DeepCollectionEquality().hash(monthCount));

  @JsonKey(ignore: true)
  @override
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      __$$_BadgeCopyWithImpl<_$_Badge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BadgeToJson(
      this,
    );
  }
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {final String? badgeType,
      final String? ratingGroup,
      final int? percentage,
      final int? userCount,
      final int? monthCount}) = _$_Badge;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$_Badge.fromJson;

  @override
  String? get badgeType;
  @override
  String? get ratingGroup;
  @override
  int? get percentage;
  @override
  int? get userCount;
  @override
  int? get monthCount;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      throw _privateConstructorUsedError;
}
