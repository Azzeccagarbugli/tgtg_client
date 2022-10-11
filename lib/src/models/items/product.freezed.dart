// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "item_id")
  String? get productId => throw _privateConstructorUsedError;
  List<SalesTax>? get salesTaxes => throw _privateConstructorUsedError;
  Price? get taxAmount => throw _privateConstructorUsedError;
  Price? get priceExcludingTaxes => throw _privateConstructorUsedError;
  Price? get priceIncludingTaxes => throw _privateConstructorUsedError;
  Price? get valueExcludingTaxes => throw _privateConstructorUsedError;
  Price? get valueIncludingTaxes => throw _privateConstructorUsedError;
  String? get taxationPolicy => throw _privateConstructorUsedError;
  bool? get showSalesTaxes => throw _privateConstructorUsedError;
  Picture? get coverPicture => throw _privateConstructorUsedError;
  Picture? get logoPicture => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get foodHandlingInstructions => throw _privateConstructorUsedError;
  bool? get canUserSupplyPackaging => throw _privateConstructorUsedError;
  String? get packagingOption => throw _privateConstructorUsedError;
  String? get collectionInfo => throw _privateConstructorUsedError;
  List<dynamic>? get dietCategories => throw _privateConstructorUsedError;
  String? get itemCategory => throw _privateConstructorUsedError;
  bool? get buffet => throw _privateConstructorUsedError;
  List<Badge>? get badges => throw _privateConstructorUsedError;
  List<String>? get positiveRatingReasons => throw _privateConstructorUsedError;
  Rating? get averageOverallRating => throw _privateConstructorUsedError;
  int? get favoriteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "item_id") String? productId,
      List<SalesTax>? salesTaxes,
      Price? taxAmount,
      Price? priceExcludingTaxes,
      Price? priceIncludingTaxes,
      Price? valueExcludingTaxes,
      Price? valueIncludingTaxes,
      String? taxationPolicy,
      bool? showSalesTaxes,
      Picture? coverPicture,
      Picture? logoPicture,
      String? name,
      String? description,
      String? foodHandlingInstructions,
      bool? canUserSupplyPackaging,
      String? packagingOption,
      String? collectionInfo,
      List<dynamic>? dietCategories,
      String? itemCategory,
      bool? buffet,
      List<Badge>? badges,
      List<String>? positiveRatingReasons,
      Rating? averageOverallRating,
      int? favoriteCount});

  $PriceCopyWith<$Res>? get taxAmount;
  $PriceCopyWith<$Res>? get priceExcludingTaxes;
  $PriceCopyWith<$Res>? get priceIncludingTaxes;
  $PriceCopyWith<$Res>? get valueExcludingTaxes;
  $PriceCopyWith<$Res>? get valueIncludingTaxes;
  $PictureCopyWith<$Res>? get coverPicture;
  $PictureCopyWith<$Res>? get logoPicture;
  $RatingCopyWith<$Res>? get averageOverallRating;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? productId = freezed,
    Object? salesTaxes = freezed,
    Object? taxAmount = freezed,
    Object? priceExcludingTaxes = freezed,
    Object? priceIncludingTaxes = freezed,
    Object? valueExcludingTaxes = freezed,
    Object? valueIncludingTaxes = freezed,
    Object? taxationPolicy = freezed,
    Object? showSalesTaxes = freezed,
    Object? coverPicture = freezed,
    Object? logoPicture = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? foodHandlingInstructions = freezed,
    Object? canUserSupplyPackaging = freezed,
    Object? packagingOption = freezed,
    Object? collectionInfo = freezed,
    Object? dietCategories = freezed,
    Object? itemCategory = freezed,
    Object? buffet = freezed,
    Object? badges = freezed,
    Object? positiveRatingReasons = freezed,
    Object? averageOverallRating = freezed,
    Object? favoriteCount = freezed,
  }) {
    return _then(_value.copyWith(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesTaxes: salesTaxes == freezed
          ? _value.salesTaxes
          : salesTaxes // ignore: cast_nullable_to_non_nullable
              as List<SalesTax>?,
      taxAmount: taxAmount == freezed
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceExcludingTaxes: priceExcludingTaxes == freezed
          ? _value.priceExcludingTaxes
          : priceExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceIncludingTaxes: priceIncludingTaxes == freezed
          ? _value.priceIncludingTaxes
          : priceIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      valueExcludingTaxes: valueExcludingTaxes == freezed
          ? _value.valueExcludingTaxes
          : valueExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      valueIncludingTaxes: valueIncludingTaxes == freezed
          ? _value.valueIncludingTaxes
          : valueIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      taxationPolicy: taxationPolicy == freezed
          ? _value.taxationPolicy
          : taxationPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      showSalesTaxes: showSalesTaxes == freezed
          ? _value.showSalesTaxes
          : showSalesTaxes // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      logoPicture: logoPicture == freezed
          ? _value.logoPicture
          : logoPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      foodHandlingInstructions: foodHandlingInstructions == freezed
          ? _value.foodHandlingInstructions
          : foodHandlingInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      canUserSupplyPackaging: canUserSupplyPackaging == freezed
          ? _value.canUserSupplyPackaging
          : canUserSupplyPackaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      packagingOption: packagingOption == freezed
          ? _value.packagingOption
          : packagingOption // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionInfo: collectionInfo == freezed
          ? _value.collectionInfo
          : collectionInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietCategories: dietCategories == freezed
          ? _value.dietCategories
          : dietCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      buffet: buffet == freezed
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as bool?,
      badges: badges == freezed
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>?,
      positiveRatingReasons: positiveRatingReasons == freezed
          ? _value.positiveRatingReasons
          : positiveRatingReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      averageOverallRating: averageOverallRating == freezed
          ? _value.averageOverallRating
          : averageOverallRating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $PriceCopyWith<$Res>? get taxAmount {
    if (_value.taxAmount == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.taxAmount!, (value) {
      return _then(_value.copyWith(taxAmount: value));
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
  $PriceCopyWith<$Res>? get priceIncludingTaxes {
    if (_value.priceIncludingTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.priceIncludingTaxes!, (value) {
      return _then(_value.copyWith(priceIncludingTaxes: value));
    });
  }

  @override
  $PriceCopyWith<$Res>? get valueExcludingTaxes {
    if (_value.valueExcludingTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.valueExcludingTaxes!, (value) {
      return _then(_value.copyWith(valueExcludingTaxes: value));
    });
  }

  @override
  $PriceCopyWith<$Res>? get valueIncludingTaxes {
    if (_value.valueIncludingTaxes == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.valueIncludingTaxes!, (value) {
      return _then(_value.copyWith(valueIncludingTaxes: value));
    });
  }

  @override
  $PictureCopyWith<$Res>? get coverPicture {
    if (_value.coverPicture == null) {
      return null;
    }

    return $PictureCopyWith<$Res>(_value.coverPicture!, (value) {
      return _then(_value.copyWith(coverPicture: value));
    });
  }

  @override
  $PictureCopyWith<$Res>? get logoPicture {
    if (_value.logoPicture == null) {
      return null;
    }

    return $PictureCopyWith<$Res>(_value.logoPicture!, (value) {
      return _then(_value.copyWith(logoPicture: value));
    });
  }

  @override
  $RatingCopyWith<$Res>? get averageOverallRating {
    if (_value.averageOverallRating == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.averageOverallRating!, (value) {
      return _then(_value.copyWith(averageOverallRating: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "item_id") String? productId,
      List<SalesTax>? salesTaxes,
      Price? taxAmount,
      Price? priceExcludingTaxes,
      Price? priceIncludingTaxes,
      Price? valueExcludingTaxes,
      Price? valueIncludingTaxes,
      String? taxationPolicy,
      bool? showSalesTaxes,
      Picture? coverPicture,
      Picture? logoPicture,
      String? name,
      String? description,
      String? foodHandlingInstructions,
      bool? canUserSupplyPackaging,
      String? packagingOption,
      String? collectionInfo,
      List<dynamic>? dietCategories,
      String? itemCategory,
      bool? buffet,
      List<Badge>? badges,
      List<String>? positiveRatingReasons,
      Rating? averageOverallRating,
      int? favoriteCount});

  @override
  $PriceCopyWith<$Res>? get taxAmount;
  @override
  $PriceCopyWith<$Res>? get priceExcludingTaxes;
  @override
  $PriceCopyWith<$Res>? get priceIncludingTaxes;
  @override
  $PriceCopyWith<$Res>? get valueExcludingTaxes;
  @override
  $PriceCopyWith<$Res>? get valueIncludingTaxes;
  @override
  $PictureCopyWith<$Res>? get coverPicture;
  @override
  $PictureCopyWith<$Res>? get logoPicture;
  @override
  $RatingCopyWith<$Res>? get averageOverallRating;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? productId = freezed,
    Object? salesTaxes = freezed,
    Object? taxAmount = freezed,
    Object? priceExcludingTaxes = freezed,
    Object? priceIncludingTaxes = freezed,
    Object? valueExcludingTaxes = freezed,
    Object? valueIncludingTaxes = freezed,
    Object? taxationPolicy = freezed,
    Object? showSalesTaxes = freezed,
    Object? coverPicture = freezed,
    Object? logoPicture = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? foodHandlingInstructions = freezed,
    Object? canUserSupplyPackaging = freezed,
    Object? packagingOption = freezed,
    Object? collectionInfo = freezed,
    Object? dietCategories = freezed,
    Object? itemCategory = freezed,
    Object? buffet = freezed,
    Object? badges = freezed,
    Object? positiveRatingReasons = freezed,
    Object? averageOverallRating = freezed,
    Object? favoriteCount = freezed,
  }) {
    return _then(_$_Product(
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      salesTaxes: salesTaxes == freezed
          ? _value._salesTaxes
          : salesTaxes // ignore: cast_nullable_to_non_nullable
              as List<SalesTax>?,
      taxAmount: taxAmount == freezed
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceExcludingTaxes: priceExcludingTaxes == freezed
          ? _value.priceExcludingTaxes
          : priceExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      priceIncludingTaxes: priceIncludingTaxes == freezed
          ? _value.priceIncludingTaxes
          : priceIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      valueExcludingTaxes: valueExcludingTaxes == freezed
          ? _value.valueExcludingTaxes
          : valueExcludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      valueIncludingTaxes: valueIncludingTaxes == freezed
          ? _value.valueIncludingTaxes
          : valueIncludingTaxes // ignore: cast_nullable_to_non_nullable
              as Price?,
      taxationPolicy: taxationPolicy == freezed
          ? _value.taxationPolicy
          : taxationPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      showSalesTaxes: showSalesTaxes == freezed
          ? _value.showSalesTaxes
          : showSalesTaxes // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      logoPicture: logoPicture == freezed
          ? _value.logoPicture
          : logoPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      foodHandlingInstructions: foodHandlingInstructions == freezed
          ? _value.foodHandlingInstructions
          : foodHandlingInstructions // ignore: cast_nullable_to_non_nullable
              as String?,
      canUserSupplyPackaging: canUserSupplyPackaging == freezed
          ? _value.canUserSupplyPackaging
          : canUserSupplyPackaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      packagingOption: packagingOption == freezed
          ? _value.packagingOption
          : packagingOption // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionInfo: collectionInfo == freezed
          ? _value.collectionInfo
          : collectionInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      dietCategories: dietCategories == freezed
          ? _value._dietCategories
          : dietCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      itemCategory: itemCategory == freezed
          ? _value.itemCategory
          : itemCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      buffet: buffet == freezed
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as bool?,
      badges: badges == freezed
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>?,
      positiveRatingReasons: positiveRatingReasons == freezed
          ? _value._positiveRatingReasons
          : positiveRatingReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      averageOverallRating: averageOverallRating == freezed
          ? _value.averageOverallRating
          : averageOverallRating // ignore: cast_nullable_to_non_nullable
              as Rating?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product {
  const _$_Product(
      {@JsonKey(name: "item_id") this.productId,
      final List<SalesTax>? salesTaxes,
      this.taxAmount,
      this.priceExcludingTaxes,
      this.priceIncludingTaxes,
      this.valueExcludingTaxes,
      this.valueIncludingTaxes,
      this.taxationPolicy,
      this.showSalesTaxes,
      this.coverPicture,
      this.logoPicture,
      this.name,
      this.description,
      this.foodHandlingInstructions,
      this.canUserSupplyPackaging,
      this.packagingOption,
      this.collectionInfo,
      final List<dynamic>? dietCategories,
      this.itemCategory,
      this.buffet,
      final List<Badge>? badges,
      final List<String>? positiveRatingReasons,
      this.averageOverallRating,
      this.favoriteCount})
      : _salesTaxes = salesTaxes,
        _dietCategories = dietCategories,
        _badges = badges,
        _positiveRatingReasons = positiveRatingReasons,
        super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: "item_id")
  final String? productId;
  final List<SalesTax>? _salesTaxes;
  @override
  List<SalesTax>? get salesTaxes {
    final value = _salesTaxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Price? taxAmount;
  @override
  final Price? priceExcludingTaxes;
  @override
  final Price? priceIncludingTaxes;
  @override
  final Price? valueExcludingTaxes;
  @override
  final Price? valueIncludingTaxes;
  @override
  final String? taxationPolicy;
  @override
  final bool? showSalesTaxes;
  @override
  final Picture? coverPicture;
  @override
  final Picture? logoPicture;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? foodHandlingInstructions;
  @override
  final bool? canUserSupplyPackaging;
  @override
  final String? packagingOption;
  @override
  final String? collectionInfo;
  final List<dynamic>? _dietCategories;
  @override
  List<dynamic>? get dietCategories {
    final value = _dietCategories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? itemCategory;
  @override
  final bool? buffet;
  final List<Badge>? _badges;
  @override
  List<Badge>? get badges {
    final value = _badges;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _positiveRatingReasons;
  @override
  List<String>? get positiveRatingReasons {
    final value = _positiveRatingReasons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Rating? averageOverallRating;
  @override
  final int? favoriteCount;

  @override
  String toString() {
    return 'Product(productId: $productId, salesTaxes: $salesTaxes, taxAmount: $taxAmount, priceExcludingTaxes: $priceExcludingTaxes, priceIncludingTaxes: $priceIncludingTaxes, valueExcludingTaxes: $valueExcludingTaxes, valueIncludingTaxes: $valueIncludingTaxes, taxationPolicy: $taxationPolicy, showSalesTaxes: $showSalesTaxes, coverPicture: $coverPicture, logoPicture: $logoPicture, name: $name, description: $description, foodHandlingInstructions: $foodHandlingInstructions, canUserSupplyPackaging: $canUserSupplyPackaging, packagingOption: $packagingOption, collectionInfo: $collectionInfo, dietCategories: $dietCategories, itemCategory: $itemCategory, buffet: $buffet, badges: $badges, positiveRatingReasons: $positiveRatingReasons, averageOverallRating: $averageOverallRating, favoriteCount: $favoriteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._salesTaxes, _salesTaxes) &&
            const DeepCollectionEquality().equals(other.taxAmount, taxAmount) &&
            const DeepCollectionEquality()
                .equals(other.priceExcludingTaxes, priceExcludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.priceIncludingTaxes, priceIncludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.valueExcludingTaxes, valueExcludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.valueIncludingTaxes, valueIncludingTaxes) &&
            const DeepCollectionEquality()
                .equals(other.taxationPolicy, taxationPolicy) &&
            const DeepCollectionEquality()
                .equals(other.showSalesTaxes, showSalesTaxes) &&
            const DeepCollectionEquality()
                .equals(other.coverPicture, coverPicture) &&
            const DeepCollectionEquality()
                .equals(other.logoPicture, logoPicture) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(
                other.foodHandlingInstructions, foodHandlingInstructions) &&
            const DeepCollectionEquality()
                .equals(other.canUserSupplyPackaging, canUserSupplyPackaging) &&
            const DeepCollectionEquality()
                .equals(other.packagingOption, packagingOption) &&
            const DeepCollectionEquality()
                .equals(other.collectionInfo, collectionInfo) &&
            const DeepCollectionEquality()
                .equals(other._dietCategories, _dietCategories) &&
            const DeepCollectionEquality()
                .equals(other.itemCategory, itemCategory) &&
            const DeepCollectionEquality().equals(other.buffet, buffet) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            const DeepCollectionEquality()
                .equals(other._positiveRatingReasons, _positiveRatingReasons) &&
            const DeepCollectionEquality()
                .equals(other.averageOverallRating, averageOverallRating) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_salesTaxes),
        const DeepCollectionEquality().hash(taxAmount),
        const DeepCollectionEquality().hash(priceExcludingTaxes),
        const DeepCollectionEquality().hash(priceIncludingTaxes),
        const DeepCollectionEquality().hash(valueExcludingTaxes),
        const DeepCollectionEquality().hash(valueIncludingTaxes),
        const DeepCollectionEquality().hash(taxationPolicy),
        const DeepCollectionEquality().hash(showSalesTaxes),
        const DeepCollectionEquality().hash(coverPicture),
        const DeepCollectionEquality().hash(logoPicture),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(foodHandlingInstructions),
        const DeepCollectionEquality().hash(canUserSupplyPackaging),
        const DeepCollectionEquality().hash(packagingOption),
        const DeepCollectionEquality().hash(collectionInfo),
        const DeepCollectionEquality().hash(_dietCategories),
        const DeepCollectionEquality().hash(itemCategory),
        const DeepCollectionEquality().hash(buffet),
        const DeepCollectionEquality().hash(_badges),
        const DeepCollectionEquality().hash(_positiveRatingReasons),
        const DeepCollectionEquality().hash(averageOverallRating),
        const DeepCollectionEquality().hash(favoriteCount)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {@JsonKey(name: "item_id") final String? productId,
      final List<SalesTax>? salesTaxes,
      final Price? taxAmount,
      final Price? priceExcludingTaxes,
      final Price? priceIncludingTaxes,
      final Price? valueExcludingTaxes,
      final Price? valueIncludingTaxes,
      final String? taxationPolicy,
      final bool? showSalesTaxes,
      final Picture? coverPicture,
      final Picture? logoPicture,
      final String? name,
      final String? description,
      final String? foodHandlingInstructions,
      final bool? canUserSupplyPackaging,
      final String? packagingOption,
      final String? collectionInfo,
      final List<dynamic>? dietCategories,
      final String? itemCategory,
      final bool? buffet,
      final List<Badge>? badges,
      final List<String>? positiveRatingReasons,
      final Rating? averageOverallRating,
      final int? favoriteCount}) = _$_Product;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: "item_id")
  String? get productId;
  @override
  List<SalesTax>? get salesTaxes;
  @override
  Price? get taxAmount;
  @override
  Price? get priceExcludingTaxes;
  @override
  Price? get priceIncludingTaxes;
  @override
  Price? get valueExcludingTaxes;
  @override
  Price? get valueIncludingTaxes;
  @override
  String? get taxationPolicy;
  @override
  bool? get showSalesTaxes;
  @override
  Picture? get coverPicture;
  @override
  Picture? get logoPicture;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get foodHandlingInstructions;
  @override
  bool? get canUserSupplyPackaging;
  @override
  String? get packagingOption;
  @override
  String? get collectionInfo;
  @override
  List<dynamic>? get dietCategories;
  @override
  String? get itemCategory;
  @override
  bool? get buffet;
  @override
  List<Badge>? get badges;
  @override
  List<String>? get positiveRatingReasons;
  @override
  Rating? get averageOverallRating;
  @override
  int? get favoriteCount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
