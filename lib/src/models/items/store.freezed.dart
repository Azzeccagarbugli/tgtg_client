// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Store.fromJson(json);
}

/// @nodoc
mixin _$Store {
  String? get storeId => throw _privateConstructorUsedError;
  String? get storeName => throw _privateConstructorUsedError;
  String? get branch => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  Location? get storeLocation => throw _privateConstructorUsedError;
  Picture? get logoPicture => throw _privateConstructorUsedError;
  String? get storeTimeZone => throw _privateConstructorUsedError;
  bool? get hidden => throw _privateConstructorUsedError;
  int? get favoriteCount => throw _privateConstructorUsedError;
  bool? get weCare => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  Picture? get coverPicture => throw _privateConstructorUsedError;
  bool? get isManufacturer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res>;
  $Res call(
      {String? storeId,
      String? storeName,
      String? branch,
      String? description,
      String? website,
      Location? storeLocation,
      Picture? logoPicture,
      String? storeTimeZone,
      bool? hidden,
      int? favoriteCount,
      bool? weCare,
      double? distance,
      Picture? coverPicture,
      bool? isManufacturer});

  $LocationCopyWith<$Res>? get storeLocation;
  $PictureCopyWith<$Res>? get logoPicture;
  $PictureCopyWith<$Res>? get coverPicture;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  final Store _value;
  // ignore: unused_field
  final $Res Function(Store) _then;

  @override
  $Res call({
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? branch = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? storeLocation = freezed,
    Object? logoPicture = freezed,
    Object? storeTimeZone = freezed,
    Object? hidden = freezed,
    Object? favoriteCount = freezed,
    Object? weCare = freezed,
    Object? distance = freezed,
    Object? coverPicture = freezed,
    Object? isManufacturer = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLocation: storeLocation == freezed
          ? _value.storeLocation
          : storeLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      logoPicture: logoPicture == freezed
          ? _value.logoPicture
          : logoPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      storeTimeZone: storeTimeZone == freezed
          ? _value.storeTimeZone
          : storeTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      weCare: weCare == freezed
          ? _value.weCare
          : weCare // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      isManufacturer: isManufacturer == freezed
          ? _value.isManufacturer
          : isManufacturer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get storeLocation {
    if (_value.storeLocation == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.storeLocation!, (value) {
      return _then(_value.copyWith(storeLocation: value));
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
  $PictureCopyWith<$Res>? get coverPicture {
    if (_value.coverPicture == null) {
      return null;
    }

    return $PictureCopyWith<$Res>(_value.coverPicture!, (value) {
      return _then(_value.copyWith(coverPicture: value));
    });
  }
}

/// @nodoc
abstract class _$$_StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$_StoreCopyWith(_$_Store value, $Res Function(_$_Store) then) =
      __$$_StoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? storeId,
      String? storeName,
      String? branch,
      String? description,
      String? website,
      Location? storeLocation,
      Picture? logoPicture,
      String? storeTimeZone,
      bool? hidden,
      int? favoriteCount,
      bool? weCare,
      double? distance,
      Picture? coverPicture,
      bool? isManufacturer});

  @override
  $LocationCopyWith<$Res>? get storeLocation;
  @override
  $PictureCopyWith<$Res>? get logoPicture;
  @override
  $PictureCopyWith<$Res>? get coverPicture;
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res> extends _$StoreCopyWithImpl<$Res>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, (v) => _then(v as _$_Store));

  @override
  _$_Store get _value => super._value as _$_Store;

  @override
  $Res call({
    Object? storeId = freezed,
    Object? storeName = freezed,
    Object? branch = freezed,
    Object? description = freezed,
    Object? website = freezed,
    Object? storeLocation = freezed,
    Object? logoPicture = freezed,
    Object? storeTimeZone = freezed,
    Object? hidden = freezed,
    Object? favoriteCount = freezed,
    Object? weCare = freezed,
    Object? distance = freezed,
    Object? coverPicture = freezed,
    Object? isManufacturer = freezed,
  }) {
    return _then(_$_Store(
      storeId: storeId == freezed
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      storeLocation: storeLocation == freezed
          ? _value.storeLocation
          : storeLocation // ignore: cast_nullable_to_non_nullable
              as Location?,
      logoPicture: logoPicture == freezed
          ? _value.logoPicture
          : logoPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      storeTimeZone: storeTimeZone == freezed
          ? _value.storeTimeZone
          : storeTimeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      favoriteCount: favoriteCount == freezed
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      weCare: weCare == freezed
          ? _value.weCare
          : weCare // ignore: cast_nullable_to_non_nullable
              as bool?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as Picture?,
      isManufacturer: isManufacturer == freezed
          ? _value.isManufacturer
          : isManufacturer // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store implements _Store {
  const _$_Store(
      {this.storeId,
      this.storeName,
      this.branch,
      this.description,
      this.website,
      this.storeLocation,
      this.logoPicture,
      this.storeTimeZone,
      this.hidden,
      this.favoriteCount,
      this.weCare,
      this.distance,
      this.coverPicture,
      this.isManufacturer});

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final String? storeId;
  @override
  final String? storeName;
  @override
  final String? branch;
  @override
  final String? description;
  @override
  final String? website;
  @override
  final Location? storeLocation;
  @override
  final Picture? logoPicture;
  @override
  final String? storeTimeZone;
  @override
  final bool? hidden;
  @override
  final int? favoriteCount;
  @override
  final bool? weCare;
  @override
  final double? distance;
  @override
  final Picture? coverPicture;
  @override
  final bool? isManufacturer;

  @override
  String toString() {
    return 'Store(storeId: $storeId, storeName: $storeName, branch: $branch, description: $description, website: $website, storeLocation: $storeLocation, logoPicture: $logoPicture, storeTimeZone: $storeTimeZone, hidden: $hidden, favoriteCount: $favoriteCount, weCare: $weCare, distance: $distance, coverPicture: $coverPicture, isManufacturer: $isManufacturer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            const DeepCollectionEquality().equals(other.storeId, storeId) &&
            const DeepCollectionEquality().equals(other.storeName, storeName) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality()
                .equals(other.storeLocation, storeLocation) &&
            const DeepCollectionEquality()
                .equals(other.logoPicture, logoPicture) &&
            const DeepCollectionEquality()
                .equals(other.storeTimeZone, storeTimeZone) &&
            const DeepCollectionEquality().equals(other.hidden, hidden) &&
            const DeepCollectionEquality()
                .equals(other.favoriteCount, favoriteCount) &&
            const DeepCollectionEquality().equals(other.weCare, weCare) &&
            const DeepCollectionEquality().equals(other.distance, distance) &&
            const DeepCollectionEquality()
                .equals(other.coverPicture, coverPicture) &&
            const DeepCollectionEquality()
                .equals(other.isManufacturer, isManufacturer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(storeId),
      const DeepCollectionEquality().hash(storeName),
      const DeepCollectionEquality().hash(branch),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(storeLocation),
      const DeepCollectionEquality().hash(logoPicture),
      const DeepCollectionEquality().hash(storeTimeZone),
      const DeepCollectionEquality().hash(hidden),
      const DeepCollectionEquality().hash(favoriteCount),
      const DeepCollectionEquality().hash(weCare),
      const DeepCollectionEquality().hash(distance),
      const DeepCollectionEquality().hash(coverPicture),
      const DeepCollectionEquality().hash(isManufacturer));

  @JsonKey(ignore: true)
  @override
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      __$$_StoreCopyWithImpl<_$_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreToJson(
      this,
    );
  }
}

abstract class _Store implements Store {
  const factory _Store(
      {final String? storeId,
      final String? storeName,
      final String? branch,
      final String? description,
      final String? website,
      final Location? storeLocation,
      final Picture? logoPicture,
      final String? storeTimeZone,
      final bool? hidden,
      final int? favoriteCount,
      final bool? weCare,
      final double? distance,
      final Picture? coverPicture,
      final bool? isManufacturer}) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  @override
  String? get storeId;
  @override
  String? get storeName;
  @override
  String? get branch;
  @override
  String? get description;
  @override
  String? get website;
  @override
  Location? get storeLocation;
  @override
  Picture? get logoPicture;
  @override
  String? get storeTimeZone;
  @override
  bool? get hidden;
  @override
  int? get favoriteCount;
  @override
  bool? get weCare;
  @override
  double? get distance;
  @override
  Picture? get coverPicture;
  @override
  bool? get isManufacturer;
  @override
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}
