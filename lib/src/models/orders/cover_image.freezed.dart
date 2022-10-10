// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cover_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) {
  return _ItemCoverImage.fromJson(json);
}

/// @nodoc
mixin _$CoverImage {
  String? get pictureId => throw _privateConstructorUsedError;
  String? get currentUrl => throw _privateConstructorUsedError;
  bool? get isAutomaticallyCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverImageCopyWith<CoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverImageCopyWith<$Res> {
  factory $CoverImageCopyWith(
          CoverImage value, $Res Function(CoverImage) then) =
      _$CoverImageCopyWithImpl<$Res>;
  $Res call(
      {String? pictureId, String? currentUrl, bool? isAutomaticallyCreated});
}

/// @nodoc
class _$CoverImageCopyWithImpl<$Res> implements $CoverImageCopyWith<$Res> {
  _$CoverImageCopyWithImpl(this._value, this._then);

  final CoverImage _value;
  // ignore: unused_field
  final $Res Function(CoverImage) _then;

  @override
  $Res call({
    Object? pictureId = freezed,
    Object? currentUrl = freezed,
    Object? isAutomaticallyCreated = freezed,
  }) {
    return _then(_value.copyWith(
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUrl: currentUrl == freezed
          ? _value.currentUrl
          : currentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutomaticallyCreated: isAutomaticallyCreated == freezed
          ? _value.isAutomaticallyCreated
          : isAutomaticallyCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemCoverImageCopyWith<$Res>
    implements $CoverImageCopyWith<$Res> {
  factory _$$_ItemCoverImageCopyWith(
          _$_ItemCoverImage value, $Res Function(_$_ItemCoverImage) then) =
      __$$_ItemCoverImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? pictureId, String? currentUrl, bool? isAutomaticallyCreated});
}

/// @nodoc
class __$$_ItemCoverImageCopyWithImpl<$Res>
    extends _$CoverImageCopyWithImpl<$Res>
    implements _$$_ItemCoverImageCopyWith<$Res> {
  __$$_ItemCoverImageCopyWithImpl(
      _$_ItemCoverImage _value, $Res Function(_$_ItemCoverImage) _then)
      : super(_value, (v) => _then(v as _$_ItemCoverImage));

  @override
  _$_ItemCoverImage get _value => super._value as _$_ItemCoverImage;

  @override
  $Res call({
    Object? pictureId = freezed,
    Object? currentUrl = freezed,
    Object? isAutomaticallyCreated = freezed,
  }) {
    return _then(_$_ItemCoverImage(
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUrl: currentUrl == freezed
          ? _value.currentUrl
          : currentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isAutomaticallyCreated: isAutomaticallyCreated == freezed
          ? _value.isAutomaticallyCreated
          : isAutomaticallyCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemCoverImage implements _ItemCoverImage {
  const _$_ItemCoverImage(
      {this.pictureId, this.currentUrl, this.isAutomaticallyCreated});

  factory _$_ItemCoverImage.fromJson(Map<String, dynamic> json) =>
      _$$_ItemCoverImageFromJson(json);

  @override
  final String? pictureId;
  @override
  final String? currentUrl;
  @override
  final bool? isAutomaticallyCreated;

  @override
  String toString() {
    return 'CoverImage(pictureId: $pictureId, currentUrl: $currentUrl, isAutomaticallyCreated: $isAutomaticallyCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCoverImage &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality()
                .equals(other.currentUrl, currentUrl) &&
            const DeepCollectionEquality()
                .equals(other.isAutomaticallyCreated, isAutomaticallyCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(currentUrl),
      const DeepCollectionEquality().hash(isAutomaticallyCreated));

  @JsonKey(ignore: true)
  @override
  _$$_ItemCoverImageCopyWith<_$_ItemCoverImage> get copyWith =>
      __$$_ItemCoverImageCopyWithImpl<_$_ItemCoverImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemCoverImageToJson(
      this,
    );
  }
}

abstract class _ItemCoverImage implements CoverImage {
  const factory _ItemCoverImage(
      {final String? pictureId,
      final String? currentUrl,
      final bool? isAutomaticallyCreated}) = _$_ItemCoverImage;

  factory _ItemCoverImage.fromJson(Map<String, dynamic> json) =
      _$_ItemCoverImage.fromJson;

  @override
  String? get pictureId;
  @override
  String? get currentUrl;
  @override
  bool? get isAutomaticallyCreated;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCoverImageCopyWith<_$_ItemCoverImage> get copyWith =>
      throw _privateConstructorUsedError;
}
