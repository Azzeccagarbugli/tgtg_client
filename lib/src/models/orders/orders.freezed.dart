// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Orders _$OrdersFromJson(Map<String, dynamic> json) {
  return _Orders.fromJson(json);
}

/// @nodoc
mixin _$Orders {
  DateTime? get currentTime => throw _privateConstructorUsedError;
  bool? get hasMore => throw _privateConstructorUsedError;
  List<Order>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res>;
  $Res call({DateTime? currentTime, bool? hasMore, List<Order>? orders});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res> implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  final Orders _value;
  // ignore: unused_field
  final $Res Function(Orders) _then;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? hasMore = freezed,
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      orders: orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrdersCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$_OrdersCopyWith(_$_Orders value, $Res Function(_$_Orders) then) =
      __$$_OrdersCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? currentTime, bool? hasMore, List<Order>? orders});
}

/// @nodoc
class __$$_OrdersCopyWithImpl<$Res> extends _$OrdersCopyWithImpl<$Res>
    implements _$$_OrdersCopyWith<$Res> {
  __$$_OrdersCopyWithImpl(_$_Orders _value, $Res Function(_$_Orders) _then)
      : super(_value, (v) => _then(v as _$_Orders));

  @override
  _$_Orders get _value => super._value as _$_Orders;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? hasMore = freezed,
    Object? orders = freezed,
  }) {
    return _then(_$_Orders(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hasMore: hasMore == freezed
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      orders: orders == freezed
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Orders implements _Orders {
  const _$_Orders({this.currentTime, this.hasMore, final List<Order>? orders})
      : _orders = orders;

  factory _$_Orders.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersFromJson(json);

  @override
  final DateTime? currentTime;
  @override
  final bool? hasMore;
  final List<Order>? _orders;
  @override
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Orders(currentTime: $currentTime, hasMore: $hasMore, orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Orders &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime) &&
            const DeepCollectionEquality().equals(other.hasMore, hasMore) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTime),
      const DeepCollectionEquality().hash(hasMore),
      const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  _$$_OrdersCopyWith<_$_Orders> get copyWith =>
      __$$_OrdersCopyWithImpl<_$_Orders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersToJson(
      this,
    );
  }
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {final DateTime? currentTime,
      final bool? hasMore,
      final List<Order>? orders}) = _$_Orders;

  factory _Orders.fromJson(Map<String, dynamic> json) = _$_Orders.fromJson;

  @override
  DateTime? get currentTime;
  @override
  bool? get hasMore;
  @override
  List<Order>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersCopyWith<_$_Orders> get copyWith =>
      throw _privateConstructorUsedError;
}
