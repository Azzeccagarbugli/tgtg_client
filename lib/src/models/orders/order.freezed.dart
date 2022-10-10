// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String? get orderId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  DateTime? get cancelUntil => throw _privateConstructorUsedError;
  Interval? get redeemInterval => throw _privateConstructorUsedError;
  Interval? get pickupInterval => throw _privateConstructorUsedError;
  String? get storeTimeZone => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  Price? get priceIncludingTaxes => throw _privateConstructorUsedError;
  Price? get priceExcludingTaxes => throw _privateConstructorUsedError;
  Price? get totalAppliedTaxes => throw _privateConstructorUsedError;
  List<dynamic>? get salesTaxes => throw _privateConstructorUsedError;
  Location? get pickupLocation => throw _privateConstructorUsedError;
  bool? get canBeRated => throw _privateConstructorUsedError;
  bool? get isRated => throw _privateConstructorUsedError;
  DateTime? get timeOfPurchase => throw _privateConstructorUsedError;
  String? get storeId => throw _privateConstructorUsedError;
  String? get storeName => throw _privateConstructorUsedError;
  String? get storeBranch => throw _privateConstructorUsedError;
  CoverImage? get storeLogo => throw _privateConstructorUsedError;
  String? get itemId => throw _privateConstructorUsedError;
  String? get itemName => throw _privateConstructorUsedError;
  CoverImage? get itemCoverImage => throw _privateConstructorUsedError;
  bool? get isBuffet => throw _privateConstructorUsedError;
  bool? get canUserSupplyPackaging => throw _privateConstructorUsedError;
  String? get packagingOption => throw _privateConstructorUsedError;
  bool? get isStoreWeCare => throw _privateConstructorUsedError;
  bool? get canShowBestBeforeExplainer => throw _privateConstructorUsedError;
  bool? get showSalesTaxes => throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;
  String? get foodHandlingInstructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String? orderId,
      String? state,
      DateTime? cancelUntil,
      Interval? redeemInterval,
      Interval? pickupInterval,
      String? storeTimeZone,
      int? quantity,
      Price? priceIncludingTaxes,
      Price? priceExcludingTaxes,
      Price? totalAppliedTaxes,
      List<dynamic>? salesTaxes,
      Location? pickupLocation,
      bool? canBeRated,
      bool? isRated,
      DateTime? timeOfPurchase,
      String? storeId,
      String? storeName,
      String? storeBranch,
      CoverImage? storeLogo,
      String? itemId,
      String? itemName,
      CoverImage? itemCoverImage,
      bool? isBuffet,
      bool? canUserSupplyPackaging,
      String? packagingOption,
      bool? isStoreWeCare,
      bool? canShowBestBeforeExplainer,
      bool? showSalesTaxes,
      String? orderType,
      String? foodHandlingInstructions});

  $IntervalCopyWith<$Res>? get redeemInterval;
  $IntervalCopyWith<$Res>? get pickupInterval;
  $PriceCopyWith<$Res>? get priceIncludingTaxes;
  $PriceCopyWith<$Res>? get priceExcludingTaxes;
  $PriceCopyWith<$Res>? get totalAppliedTaxes;
  $LocationCopyWith<$Res>? get pickupLocation;
  $CoverImageCopyWith<$Res>? get storeLogo;
  $CoverImageCopyWith<$Res>? get itemCoverImage;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? state = freezed,
    Object? cancelUntil = freezed,
    Object? redeemInterval = freezed,
    Object? pickupInterval = freezed,
    Object? storeTimeZone = freezed,
    Object? quantity = freezed,
    Object? priceIncludingTaxes = freezed,
    Object? priceExcludingTaxes = freezed,
    Object? totalAppliedTaxes = freezed,
    Object? salesTaxes = freezed,
    Object? pickupLocation = freezed,
    Object? canBeRated = freezed,
    Object? isRated = freezed,
    Object? timeOfPurchase = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? storeBranch = freezed,
    Object? storeLogo = freezed,
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? itemCoverImage = freezed,
    Object? isBuffet = freezed,
    Object? canUserSupplyPackaging = freezed,
    Object? packagingOption = freezed,
    Object? isStoreWeCare = freezed,
    Object? canShowBestBeforeExplainer = freezed,
    Object? showSalesTaxes = freezed,
    Object? orderType = freezed,
    Object? foodHandlingInstructions = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelUntil: cancelUntil == freezed
          ? _value.cancelUntil
          : cancelUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      redeemInterval: redeemInterval == freezed
          ? _value.redeemInterval
          : redeemInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      pickupInterval: pickupInterval == freezed
          ? _value.pickupInterval
          : pickupInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      storeTimeZone: storeTimeZone == freezed
          ? _value.storeTimeZone
          : storeTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      priceIncludingTaxes: priceIncludingTaxes == freezed
          ? _value.priceIncludingTaxes
          : priceIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceExcludingTaxes: priceExcludingTaxes == freezed
          ? _value.priceExcludingTaxes
          : priceExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      totalAppliedTaxes: totalAppliedTaxes == freezed
          ? _value.totalAppliedTaxes
          : totalAppliedTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      salesTaxes: salesTaxes == freezed
          ? _value.salesTaxes
          : salesTaxes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pickupLocation: pickupLocation == freezed
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      canBeRated: canBeRated == freezed
          ? _value.canBeRated
          : canBeRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeOfPurchase: timeOfPurchase == freezed
          ? _value.timeOfPurchase
          : timeOfPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeBranch: storeBranch == freezed
          ? _value.storeBranch
          : storeBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLogo: storeLogo == freezed
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCoverImage: itemCoverImage == freezed
          ? _value.itemCoverImage
          : itemCoverImage // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      isBuffet: isBuffet == freezed
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUserSupplyPackaging: canUserSupplyPackaging == freezed
          ? _value.canUserSupplyPackaging
          : canUserSupplyPackaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      packagingOption: packagingOption == freezed
          ? _value.packagingOption
          : packagingOption // ignore: cast_nullable_to_non_nullable
              as String?,
      isStoreWeCare: isStoreWeCare == freezed
          ? _value.isStoreWeCare
          : isStoreWeCare // ignore: cast_nullable_to_non_nullable
              as bool?,
      canShowBestBeforeExplainer: canShowBestBeforeExplainer == freezed
          ? _value.canShowBestBeforeExplainer
          : canShowBestBeforeExplainer // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSalesTaxes: showSalesTaxes == freezed
          ? _value.showSalesTaxes
          : showSalesTaxes // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      foodHandlingInstructions: foodHandlingInstructions == freezed
          ? _value.foodHandlingInstructions
          : foodHandlingInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $IntervalCopyWith<$Res>? get redeemInterval {
    if (_value.redeemInterval == null) {
      return null;
    }

    return $IntervalCopyWith<$Res>(_value.redeemInterval!, (value) {
      return _then(_value.copyWith(redeemInterval: value));
    });
  }

  @override
  $IntervalCopyWith<$Res>? get pickupInterval {
    if (_value.pickupInterval == null) {
      return null;
    }

    return $IntervalCopyWith<$Res>(_value.pickupInterval!, (value) {
      return _then(_value.copyWith(pickupInterval: value));
    });
  }

  @override
  $PriceCopyWith<$Res>? get priceIncludingTaxes {
    if (_value.priceIncludingTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.priceIncludingTaxes!, (value) {
      return _then(_value.copyWith(priceIncludingTaxes: value));
    });
  }

  @override
  $PriceCopyWith<$Res>? get priceExcludingTaxes {
    if (_value.priceExcludingTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.priceExcludingTaxes!, (value) {
      return _then(_value.copyWith(priceExcludingTaxes: value));
    });
  }

  @override
  $PriceCopyWith<$Res>? get totalAppliedTaxes {
    if (_value.totalAppliedTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.totalAppliedTaxes!, (value) {
      return _then(_value.copyWith(totalAppliedTaxes: value));
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

  @override
  $CoverImageCopyWith<$Res>? get storeLogo {
    if (_value.storeLogo == null) {
      return null;
    }

    return $CoverImageCopyWith<$Res>(_value.storeLogo!, (value) {
      return _then(_value.copyWith(storeLogo: value));
    });
  }

  @override
  $CoverImageCopyWith<$Res>? get itemCoverImage {
    if (_value.itemCoverImage == null) {
      return null;
    }

    return $CoverImageCopyWith<$Res>(_value.itemCoverImage!, (value) {
      return _then(_value.copyWith(itemCoverImage: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? orderId,
      String? state,
      DateTime? cancelUntil,
      Interval? redeemInterval,
      Interval? pickupInterval,
      String? storeTimeZone,
      int? quantity,
      Price? priceIncludingTaxes,
      Price? priceExcludingTaxes,
      Price? totalAppliedTaxes,
      List<dynamic>? salesTaxes,
      Location? pickupLocation,
      bool? canBeRated,
      bool? isRated,
      DateTime? timeOfPurchase,
      String? storeId,
      String? storeName,
      String? storeBranch,
      CoverImage? storeLogo,
      String? itemId,
      String? itemName,
      CoverImage? itemCoverImage,
      bool? isBuffet,
      bool? canUserSupplyPackaging,
      String? packagingOption,
      bool? isStoreWeCare,
      bool? canShowBestBeforeExplainer,
      bool? showSalesTaxes,
      String? orderType,
      String? foodHandlingInstructions});

  @override
  $IntervalCopyWith<$Res>? get redeemInterval;
  @override
  $IntervalCopyWith<$Res>? get pickupInterval;
  @override
  $PriceCopyWith<$Res>? get priceIncludingTaxes;
  @override
  $PriceCopyWith<$Res>? get priceExcludingTaxes;
  @override
  $PriceCopyWith<$Res>? get totalAppliedTaxes;
  @override
  $LocationCopyWith<$Res>? get pickupLocation;
  @override
  $CoverImageCopyWith<$Res>? get storeLogo;
  @override
  $CoverImageCopyWith<$Res>? get itemCoverImage;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, (v) => _then(v as _$_Order));

  @override
  _$_Order get _value => super._value as _$_Order;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? state = freezed,
    Object? cancelUntil = freezed,
    Object? redeemInterval = freezed,
    Object? pickupInterval = freezed,
    Object? storeTimeZone = freezed,
    Object? quantity = freezed,
    Object? priceIncludingTaxes = freezed,
    Object? priceExcludingTaxes = freezed,
    Object? totalAppliedTaxes = freezed,
    Object? salesTaxes = freezed,
    Object? pickupLocation = freezed,
    Object? canBeRated = freezed,
    Object? isRated = freezed,
    Object? timeOfPurchase = freezed,
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? storeBranch = freezed,
    Object? storeLogo = freezed,
    Object? itemId = freezed,
    Object? itemName = freezed,
    Object? itemCoverImage = freezed,
    Object? isBuffet = freezed,
    Object? canUserSupplyPackaging = freezed,
    Object? packagingOption = freezed,
    Object? isStoreWeCare = freezed,
    Object? canShowBestBeforeExplainer = freezed,
    Object? showSalesTaxes = freezed,
    Object? orderType = freezed,
    Object? foodHandlingInstructions = freezed,
  }) {
    return _then(_$_Order(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelUntil: cancelUntil == freezed
          ? _value.cancelUntil
          : cancelUntil // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      redeemInterval: redeemInterval == freezed
          ? _value.redeemInterval
          : redeemInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      pickupInterval: pickupInterval == freezed
          ? _value.pickupInterval
          : pickupInterval // ignore: cast_nullable_to_non_nullable
              as Interval?,
      storeTimeZone: storeTimeZone == freezed
          ? _value.storeTimeZone
          : storeTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      priceIncludingTaxes: priceIncludingTaxes == freezed
          ? _value.priceIncludingTaxes
          : priceIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceExcludingTaxes: priceExcludingTaxes == freezed
          ? _value.priceExcludingTaxes
          : priceExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      totalAppliedTaxes: totalAppliedTaxes == freezed
          ? _value.totalAppliedTaxes
          : totalAppliedTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      salesTaxes: salesTaxes == freezed
          ? _value._salesTaxes
          : salesTaxes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pickupLocation: pickupLocation == freezed
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      canBeRated: canBeRated == freezed
          ? _value.canBeRated
          : canBeRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRated: isRated == freezed
          ? _value.isRated
          : isRated // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeOfPurchase: timeOfPurchase == freezed
          ? _value.timeOfPurchase
          : timeOfPurchase // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      storeBranch: storeBranch == freezed
          ? _value.storeBranch
          : storeBranch // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLogo: storeLogo == freezed
          ? _value.storeLogo
          : storeLogo // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String?,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String?,
      itemCoverImage: itemCoverImage == freezed
          ? _value.itemCoverImage
          : itemCoverImage // ignore: cast_nullable_to_non_nullable
              as CoverImage?,
      isBuffet: isBuffet == freezed
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool?,
      canUserSupplyPackaging: canUserSupplyPackaging == freezed
          ? _value.canUserSupplyPackaging
          : canUserSupplyPackaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      packagingOption: packagingOption == freezed
          ? _value.packagingOption
          : packagingOption // ignore: cast_nullable_to_non_nullable
              as String?,
      isStoreWeCare: isStoreWeCare == freezed
          ? _value.isStoreWeCare
          : isStoreWeCare // ignore: cast_nullable_to_non_nullable
              as bool?,
      canShowBestBeforeExplainer: canShowBestBeforeExplainer == freezed
          ? _value.canShowBestBeforeExplainer
          : canShowBestBeforeExplainer // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSalesTaxes: showSalesTaxes == freezed
          ? _value.showSalesTaxes
          : showSalesTaxes // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String?,
      foodHandlingInstructions: foodHandlingInstructions == freezed
          ? _value.foodHandlingInstructions
          : foodHandlingInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {this.orderId,
      this.state,
      this.cancelUntil,
      this.redeemInterval,
      this.pickupInterval,
      this.storeTimeZone,
      this.quantity,
      this.priceIncludingTaxes,
      this.priceExcludingTaxes,
      this.totalAppliedTaxes,
      final List<dynamic>? salesTaxes,
      this.pickupLocation,
      this.canBeRated,
      this.isRated,
      this.timeOfPurchase,
      this.storeId,
      this.storeName,
      this.storeBranch,
      this.storeLogo,
      this.itemId,
      this.itemName,
      this.itemCoverImage,
      this.isBuffet,
      this.canUserSupplyPackaging,
      this.packagingOption,
      this.isStoreWeCare,
      this.canShowBestBeforeExplainer,
      this.showSalesTaxes,
      this.orderType,
      this.foodHandlingInstructions})
      : _salesTaxes = salesTaxes;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String? orderId;
  @override
  final String? state;
  @override
  final DateTime? cancelUntil;
  @override
  final Interval? redeemInterval;
  @override
  final Interval? pickupInterval;
  @override
  final String? storeTimeZone;
  @override
  final int? quantity;
  @override
  final Price? priceIncludingTaxes;
  @override
  final Price? priceExcludingTaxes;
  @override
  final Price? totalAppliedTaxes;
  final List<dynamic>? _salesTaxes;
  @override
  List<dynamic>? get salesTaxes {
    final value = _salesTaxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? pickupLocation;
  @override
  final bool? canBeRated;
  @override
  final bool? isRated;
  @override
  final DateTime? timeOfPurchase;
  @override
  final String? storeId;
  @override
  final String? storeName;
  @override
  final String? storeBranch;
  @override
  final CoverImage? storeLogo;
  @override
  final String? itemId;
  @override
  final String? itemName;
  @override
  final CoverImage? itemCoverImage;
  @override
  final bool? isBuffet;
  @override
  final bool? canUserSupplyPackaging;
  @override
  final String? packagingOption;
  @override
  final bool? isStoreWeCare;
  @override
  final bool? canShowBestBeforeExplainer;
  @override
  final bool? showSalesTaxes;
  @override
  final String? orderType;
  @override
  final String? foodHandlingInstructions;

  @override
  String toString() {
    return 'Order(orderId: $orderId, state: $state, cancelUntil: $cancelUntil, redeemInterval: $redeemInterval, pickupInterval: $pickupInterval, storeTimeZone: $storeTimeZone, quantity: $quantity, priceIncludingTaxes: $priceIncludingTaxes, priceExcludingTaxes: $priceExcludingTaxes, totalAppliedTaxes: $totalAppliedTaxes, salesTaxes: $salesTaxes, pickupLocation: $pickupLocation, canBeRated: $canBeRated, isRated: $isRated, timeOfPurchase: $timeOfPurchase, storeId: $storeId, storeName: $storeName, storeBranch: $storeBranch, storeLogo: $storeLogo, itemId: $itemId, itemName: $itemName, itemCoverImage: $itemCoverImage, isBuffet: $isBuffet, canUserSupplyPackaging: $canUserSupplyPackaging, packagingOption: $packagingOption, isStoreWeCare: $isStoreWeCare, canShowBestBeforeExplainer: $canShowBestBeforeExplainer, showSalesTaxes: $showSalesTaxes, orderType: $orderType, foodHandlingInstructions: $foodHandlingInstructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            const DeepCollectionEquality().equals(other.orderId, orderId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.cancelUntil, cancelUntil) &&
            const DeepCollectionEquality()
                .equals(other.redeemInterval, redeemInterval) &&
            const DeepCollectionEquality()
                .equals(other.pickupInterval, pickupInterval) &&
            const DeepCollectionEquality()
                .equals(other.storeTimeZone, storeTimeZone) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.priceIncludingTaxes, priceIncludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.priceExcludingTaxes, priceExcludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.totalAppliedTaxes, totalAppliedTaxes) &&
            const DeepCollectionEquality()
                .equals(other._salesTaxes, _salesTaxes) &&
            const DeepCollectionEquality()
                .equals(other.pickupLocation, pickupLocation) &&
            const DeepCollectionEquality()
                .equals(other.canBeRated, canBeRated) &&
            const DeepCollectionEquality().equals(other.isRated, isRated) &&
            const DeepCollectionEquality()
                .equals(other.timeOfPurchase, timeOfPurchase) &&
            const DeepCollectionEquality().equals(other.storeId, storeId) &&
            const DeepCollectionEquality().equals(other.storeName, storeName) &&
            const DeepCollectionEquality()
                .equals(other.storeBranch, storeBranch) &&
            const DeepCollectionEquality().equals(other.storeLogo, storeLogo) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality()
                .equals(other.itemCoverImage, itemCoverImage) &&
            const DeepCollectionEquality().equals(other.isBuffet, isBuffet) &&
            const DeepCollectionEquality()
                .equals(other.canUserSupplyPackaging, canUserSupplyPackaging) &&
            const DeepCollectionEquality()
                .equals(other.packagingOption, packagingOption) &&
            const DeepCollectionEquality()
                .equals(other.isStoreWeCare, isStoreWeCare) &&
            const DeepCollectionEquality().equals(
                other.canShowBestBeforeExplainer, canShowBestBeforeExplainer) &&
            const DeepCollectionEquality()
                .equals(other.showSalesTaxes, showSalesTaxes) &&
            const DeepCollectionEquality().equals(other.orderType, orderType) &&
            const DeepCollectionEquality().equals(
                other.foodHandlingInstructions, foodHandlingInstructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(orderId),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(cancelUntil),
        const DeepCollectionEquality().hash(redeemInterval),
        const DeepCollectionEquality().hash(pickupInterval),
        const DeepCollectionEquality().hash(storeTimeZone),
        const DeepCollectionEquality().hash(quantity),
        const DeepCollectionEquality().hash(priceIncludingTaxes),
        const DeepCollectionEquality().hash(priceExcludingTaxes),
        const DeepCollectionEquality().hash(totalAppliedTaxes),
        const DeepCollectionEquality().hash(_salesTaxes),
        const DeepCollectionEquality().hash(pickupLocation),
        const DeepCollectionEquality().hash(canBeRated),
        const DeepCollectionEquality().hash(isRated),
        const DeepCollectionEquality().hash(timeOfPurchase),
        const DeepCollectionEquality().hash(storeId),
        const DeepCollectionEquality().hash(storeName),
        const DeepCollectionEquality().hash(storeBranch),
        const DeepCollectionEquality().hash(storeLogo),
        const DeepCollectionEquality().hash(itemId),
        const DeepCollectionEquality().hash(itemName),
        const DeepCollectionEquality().hash(itemCoverImage),
        const DeepCollectionEquality().hash(isBuffet),
        const DeepCollectionEquality().hash(canUserSupplyPackaging),
        const DeepCollectionEquality().hash(packagingOption),
        const DeepCollectionEquality().hash(isStoreWeCare),
        const DeepCollectionEquality().hash(canShowBestBeforeExplainer),
        const DeepCollectionEquality().hash(showSalesTaxes),
        const DeepCollectionEquality().hash(orderType),
        const DeepCollectionEquality().hash(foodHandlingInstructions)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {final String? orderId,
      final String? state,
      final DateTime? cancelUntil,
      final Interval? redeemInterval,
      final Interval? pickupInterval,
      final String? storeTimeZone,
      final int? quantity,
      final Price? priceIncludingTaxes,
      final Price? priceExcludingTaxes,
      final Price? totalAppliedTaxes,
      final List<dynamic>? salesTaxes,
      final Location? pickupLocation,
      final bool? canBeRated,
      final bool? isRated,
      final DateTime? timeOfPurchase,
      final String? storeId,
      final String? storeName,
      final String? storeBranch,
      final CoverImage? storeLogo,
      final String? itemId,
      final String? itemName,
      final CoverImage? itemCoverImage,
      final bool? isBuffet,
      final bool? canUserSupplyPackaging,
      final String? packagingOption,
      final bool? isStoreWeCare,
      final bool? canShowBestBeforeExplainer,
      final bool? showSalesTaxes,
      final String? orderType,
      final String? foodHandlingInstructions}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String? get orderId;
  @override
  String? get state;
  @override
  DateTime? get cancelUntil;
  @override
  Interval? get redeemInterval;
  @override
  Interval? get pickupInterval;
  @override
  String? get storeTimeZone;
  @override
  int? get quantity;
  @override
  Price? get priceIncludingTaxes;
  @override
  Price? get priceExcludingTaxes;
  @override
  Price? get totalAppliedTaxes;
  @override
  List<dynamic>? get salesTaxes;
  @override
  Location? get pickupLocation;
  @override
  bool? get canBeRated;
  @override
  bool? get isRated;
  @override
  DateTime? get timeOfPurchase;
  @override
  String? get storeId;
  @override
  String? get storeName;
  @override
  String? get storeBranch;
  @override
  CoverImage? get storeLogo;
  @override
  String? get itemId;
  @override
  String? get itemName;
  @override
  CoverImage? get itemCoverImage;
  @override
  bool? get isBuffet;
  @override
  bool? get canUserSupplyPackaging;
  @override
  String? get packagingOption;
  @override
  bool? get isStoreWeCare;
  @override
  bool? get canShowBestBeforeExplainer;
  @override
  bool? get showSalesTaxes;
  @override
  String? get orderType;
  @override
  String? get foodHandlingInstructions;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
