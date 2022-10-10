// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Interval _$IntervalFromJson(Map<String, dynamic> json) {
  return _Interval.fromJson(json);
}

/// @nodoc
mixin _$Interval {
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntervalCopyWith<Interval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalCopyWith<$Res> {
  factory $IntervalCopyWith(Interval value, $Res Function(Interval) then) =
      _$IntervalCopyWithImpl<$Res>;
  $Res call({DateTime? start, DateTime? end});
}

/// @nodoc
class _$IntervalCopyWithImpl<$Res> implements $IntervalCopyWith<$Res> {
  _$IntervalCopyWithImpl(this._value, this._then);

  final Interval _value;
  // ignore: unused_field
  final $Res Function(Interval) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_IntervalCopyWith<$Res> implements $IntervalCopyWith<$Res> {
  factory _$$_IntervalCopyWith(
          _$_Interval value, $Res Function(_$_Interval) then) =
      __$$_IntervalCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? start, DateTime? end});
}

/// @nodoc
class __$$_IntervalCopyWithImpl<$Res> extends _$IntervalCopyWithImpl<$Res>
    implements _$$_IntervalCopyWith<$Res> {
  __$$_IntervalCopyWithImpl(
      _$_Interval _value, $Res Function(_$_Interval) _then)
      : super(_value, (v) => _then(v as _$_Interval));

  @override
  _$_Interval get _value => super._value as _$_Interval;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Interval(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Interval implements _Interval {
  const _$_Interval({this.start, this.end});

  factory _$_Interval.fromJson(Map<String, dynamic> json) =>
      _$$_IntervalFromJson(json);

  @override
  final DateTime? start;
  @override
  final DateTime? end;

  @override
  String toString() {
    return 'Interval(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Interval &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_IntervalCopyWith<_$_Interval> get copyWith =>
      __$$_IntervalCopyWithImpl<_$_Interval>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntervalToJson(
      this,
    );
  }
}

abstract class _Interval implements Interval {
  const factory _Interval({final DateTime? start, final DateTime? end}) =
      _$_Interval;

  factory _Interval.fromJson(Map<String, dynamic> json) = _$_Interval.fromJson;

  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_IntervalCopyWith<_$_Interval> get copyWith =>
      throw _privateConstructorUsedError;
}
