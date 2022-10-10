// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesTax _$SalesTaxFromJson(Map<String, dynamic> json) {
  return _SalesTax.fromJson(json);
}

/// @nodoc
mixin _$SalesTax {
  String? get taxDescription => throw _privateConstructorUsedError;
  double? get taxPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesTaxCopyWith<SalesTax> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesTaxCopyWith<$Res> {
  factory $SalesTaxCopyWith(SalesTax value, $Res Function(SalesTax) then) =
      _$SalesTaxCopyWithImpl<$Res>;
  $Res call({String? taxDescription, double? taxPercentage});
}

/// @nodoc
class _$SalesTaxCopyWithImpl<$Res> implements $SalesTaxCopyWith<$Res> {
  _$SalesTaxCopyWithImpl(this._value, this._then);

  final SalesTax _value;
  // ignore: unused_field
  final $Res Function(SalesTax) _then;

  @override
  $Res call({
    Object? taxDescription = freezed,
    Object? taxPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      taxDescription: taxDescription == freezed
          ? _value.taxDescription
          : taxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      taxPercentage: taxPercentage == freezed
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_SalesTaxCopyWith<$Res> implements $SalesTaxCopyWith<$Res> {
  factory _$$_SalesTaxCopyWith(
          _$_SalesTax value, $Res Function(_$_SalesTax) then) =
      __$$_SalesTaxCopyWithImpl<$Res>;
  @override
  $Res call({String? taxDescription, double? taxPercentage});
}

/// @nodoc
class __$$_SalesTaxCopyWithImpl<$Res> extends _$SalesTaxCopyWithImpl<$Res>
    implements _$$_SalesTaxCopyWith<$Res> {
  __$$_SalesTaxCopyWithImpl(
      _$_SalesTax _value, $Res Function(_$_SalesTax) _then)
      : super(_value, (v) => _then(v as _$_SalesTax));

  @override
  _$_SalesTax get _value => super._value as _$_SalesTax;

  @override
  $Res call({
    Object? taxDescription = freezed,
    Object? taxPercentage = freezed,
  }) {
    return _then(_$_SalesTax(
      taxDescription: taxDescription == freezed
          ? _value.taxDescription
          : taxDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      taxPercentage: taxPercentage == freezed
          ? _value.taxPercentage
          : taxPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesTax implements _SalesTax {
  const _$_SalesTax({this.taxDescription, this.taxPercentage});

  factory _$_SalesTax.fromJson(Map<String, dynamic> json) =>
      _$$_SalesTaxFromJson(json);

  @override
  final String? taxDescription;
  @override
  final double? taxPercentage;

  @override
  String toString() {
    return 'SalesTax(taxDescription: $taxDescription, taxPercentage: $taxPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesTax &&
            const DeepCollectionEquality()
                .equals(other.taxDescription, taxDescription) &&
            const DeepCollectionEquality()
                .equals(other.taxPercentage, taxPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(taxDescription),
      const DeepCollectionEquality().hash(taxPercentage));

  @JsonKey(ignore: true)
  @override
  _$$_SalesTaxCopyWith<_$_SalesTax> get copyWith =>
      __$$_SalesTaxCopyWithImpl<_$_SalesTax>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesTaxToJson(
      this,
    );
  }
}

abstract class _SalesTax implements SalesTax {
  const factory _SalesTax(
      {final String? taxDescription,
      final double? taxPercentage}) = _$_SalesTax;

  factory _SalesTax.fromJson(Map<String, dynamic> json) = _$_SalesTax.fromJson;

  @override
  String? get taxDescription;
  @override
  double? get taxPercentage;
  @override
  @JsonKey(ignore: true)
  _$$_SalesTaxCopyWith<_$_SalesTax> get copyWith =>
      throw _privateConstructorUsedError;
}
