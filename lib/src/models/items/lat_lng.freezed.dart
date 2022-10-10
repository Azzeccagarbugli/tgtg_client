// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lat_lng.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatLng _$LatLngFromJson(Map<String, dynamic> json) {
  return _LatLng.fromJson(json);
}

/// @nodoc
mixin _$LatLng {
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngCopyWith<LatLng> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngCopyWith<$Res> {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) then) =
      _$LatLngCopyWithImpl<$Res>;
  $Res call({double? longitude, double? latitude});
}

/// @nodoc
class _$LatLngCopyWithImpl<$Res> implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._value, this._then);

  final LatLng _value;
  // ignore: unused_field
  final $Res Function(LatLng) _then;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$$_LatLngCopyWith(_$_LatLng value, $Res Function(_$_LatLng) then) =
      __$$_LatLngCopyWithImpl<$Res>;
  @override
  $Res call({double? longitude, double? latitude});
}

/// @nodoc
class __$$_LatLngCopyWithImpl<$Res> extends _$LatLngCopyWithImpl<$Res>
    implements _$$_LatLngCopyWith<$Res> {
  __$$_LatLngCopyWithImpl(_$_LatLng _value, $Res Function(_$_LatLng) _then)
      : super(_value, (v) => _then(v as _$_LatLng));

  @override
  _$_LatLng get _value => super._value as _$_LatLng;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_LatLng(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatLng implements _LatLng {
  const _$_LatLng({this.longitude, this.latitude});

  factory _$_LatLng.fromJson(Map<String, dynamic> json) =>
      _$$_LatLngFromJson(json);

  @override
  final double? longitude;
  @override
  final double? latitude;

  @override
  String toString() {
    return 'LatLng(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatLng &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.latitude, latitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(latitude));

  @JsonKey(ignore: true)
  @override
  _$$_LatLngCopyWith<_$_LatLng> get copyWith =>
      __$$_LatLngCopyWithImpl<_$_LatLng>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatLngToJson(
      this,
    );
  }
}

abstract class _LatLng implements LatLng {
  const factory _LatLng({final double? longitude, final double? latitude}) =
      _$_LatLng;

  factory _LatLng.fromJson(Map<String, dynamic> json) = _$_LatLng.fromJson;

  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_LatLngCopyWith<_$_LatLng> get copyWith =>
      throw _privateConstructorUsedError;
}
