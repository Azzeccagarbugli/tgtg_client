// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  @JsonKey(name: "item")
  Product? get product => throw _privateConstructorUsedError;
  Store? get store => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  Location? get pickupLocation => throw _privateConstructorUsedError;
  int? get itemsAvailable => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  bool? get favorite => throw _privateConstructorUsedError;
  bool? get inSalesWindow => throw _privateConstructorUsedError;
  bool? get newItem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "item") Product? product,
      Store? store,
      String? displayName,
      Location? pickupLocation,
      int? itemsAvailable,
      double? distance,
      bool? favorite,
      bool? inSalesWindow,
      bool? newItem});

  $ProductCopyWith<$Res>? get product;
  $StoreCopyWith<$Res>? get store;
  $LocationCopyWith<$Res>? get pickupLocation;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res> implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  final Items _value;
  // ignore: unused_field
  final $Res Function(Items) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? store = freezed,
    Object? displayName = freezed,
    Object? pickupLocation = freezed,
    Object? itemsAvailable = freezed,
    Object? distance = freezed,
    Object? favorite = freezed,
    Object? inSalesWindow = freezed,
    Object? newItem = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: pickupLocation == freezed
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      itemsAvailable: itemsAvailable == freezed
          ? _value.itemsAvailable
          : itemsAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      inSalesWindow: inSalesWindow == freezed
          ? _value.inSalesWindow
          : inSalesWindow // ignore: cast_nullable_to_non_nullable
              as bool?,
      newItem: newItem == freezed
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $StoreCopyWith<$Res>? get store {
    if (_value.store == null) {
      return null;
    }

    return $StoreCopyWith<$Res>(_value.store!, (value) {
      return _then(_value.copyWith(store: value));
    });
  }

  @override
  $LocationCopyWith<$Res>? get pickupLocation {
    if (_value.pickupLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.pickupLocation!, (value) {
      return _then(_value.copyWith(pickupLocation: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "item") Product? product,
      Store? store,
      String? displayName,
      Location? pickupLocation,
      int? itemsAvailable,
      double? distance,
      bool? favorite,
      bool? inSalesWindow,
      bool? newItem});

  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $StoreCopyWith<$Res>? get store;
  @override
  $LocationCopyWith<$Res>? get pickupLocation;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, (v) => _then(v as _$_Items));

  @override
  _$_Items get _value => super._value as _$_Items;

  @override
  $Res call({
    Object? product = freezed,
    Object? store = freezed,
    Object? displayName = freezed,
    Object? pickupLocation = freezed,
    Object? itemsAvailable = freezed,
    Object? distance = freezed,
    Object? favorite = freezed,
    Object? inSalesWindow = freezed,
    Object? newItem = freezed,
  }) {
    return _then(_$_Items(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      store: store == freezed
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as Store?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: pickupLocation == freezed
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      itemsAvailable: itemsAvailable == freezed
          ? _value.itemsAvailable
          : itemsAvailable // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      inSalesWindow: inSalesWindow == freezed
          ? _value.inSalesWindow
          : inSalesWindow // ignore: cast_nullable_to_non_nullable
              as bool?,
      newItem: newItem == freezed
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  const _$_Items(
      {@JsonKey(name: "item") this.product,
      this.store,
      this.displayName,
      this.pickupLocation,
      this.itemsAvailable,
      this.distance,
      this.favorite,
      this.inSalesWindow,
      this.newItem});

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  @JsonKey(name: "item")
  final Product? product;
  @override
  final Store? store;
  @override
  final String? displayName;
  @override
  final Location? pickupLocation;
  @override
  final int? itemsAvailable;
  @override
  final double? distance;
  @override
  final bool? favorite;
  @override
  final bool? inSalesWindow;
  @override
  final bool? newItem;

  @override
  String toString() {
    return 'Items(product: $product, store: $store, displayName: $displayName, pickupLocation: $pickupLocation, itemsAvailable: $itemsAvailable, distance: $distance, favorite: $favorite, inSalesWindow: $inSalesWindow, newItem: $newItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.store, store) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.pickupLocation, pickupLocation) &&
            const DeepCollectionEquality()
                .equals(other.itemsAvailable, itemsAvailable) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality().equals(other.favorite, favorite) &&
            const DeepCollectionEquality()
                .equals(other.inSalesWindow, inSalesWindow) &&
            const DeepCollectionEquality().equals(other.newItem, newItem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(store),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(pickupLocation),
      const DeepCollectionEquality().hash(itemsAvailable),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(favorite),
      const DeepCollectionEquality().hash(inSalesWindow),
      const DeepCollectionEquality().hash(newItem));

  @JsonKey(ignore: true)
  @override
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  const factory _Items(
      {@JsonKey(name: "item") final Product? product,
      final Store? store,
      final String? displayName,
      final Location? pickupLocation,
      final int? itemsAvailable,
      final double? distance,
      final bool? favorite,
      final bool? inSalesWindow,
      final bool? newItem}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  @JsonKey(name: "item")
  Product? get product;
  @override
  Store? get store;
  @override
  String? get displayName;
  @override
  Location? get pickupLocation;
  @override
  int? get itemsAvailable;
  @override
  double? get distance;
  @override
  bool? get favorite;
  @override
  bool? get inSalesWindow;
  @override
  bool? get newItem;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}
