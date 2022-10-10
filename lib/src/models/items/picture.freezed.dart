// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  String? get pictureId => throw _privateConstructorUsedError;
  String? get currentUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res>;
  $Res call({String? pictureId, String? currentUrl});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res> implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  final Picture _value;
  // ignore: unused_field
  final $Res Function(Picture) _then;

  @override
  $Res call({
    Object? pictureId = freezed,
    Object? currentUrl = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_PictureCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$_PictureCopyWith(
          _$_Picture value, $Res Function(_$_Picture) then) =
      __$$_PictureCopyWithImpl<$Res>;
  @override
  $Res call({String? pictureId, String? currentUrl});
}

/// @nodoc
class __$$_PictureCopyWithImpl<$Res> extends _$PictureCopyWithImpl<$Res>
    implements _$$_PictureCopyWith<$Res> {
  __$$_PictureCopyWithImpl(_$_Picture _value, $Res Function(_$_Picture) _then)
      : super(_value, (v) => _then(v as _$_Picture));

  @override
  _$_Picture get _value => super._value as _$_Picture;

  @override
  $Res call({
    Object? pictureId = freezed,
    Object? currentUrl = freezed,
  }) {
    return _then(_$_Picture(
      pictureId: pictureId == freezed
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentUrl: currentUrl == freezed
          ? _value.currentUrl
          : currentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Picture implements _Picture {
  const _$_Picture({this.pictureId, this.currentUrl});

  factory _$_Picture.fromJson(Map<String, dynamic> json) =>
      _$$_PictureFromJson(json);

  @override
  final String? pictureId;
  @override
  final String? currentUrl;

  @override
  String toString() {
    return 'Picture(pictureId: $pictureId, currentUrl: $currentUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Picture &&
            const DeepCollectionEquality().equals(other.pictureId, pictureId) &&
            const DeepCollectionEquality()
                .equals(other.currentUrl, currentUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pictureId),
      const DeepCollectionEquality().hash(currentUrl));

  @JsonKey(ignore: true)
  @override
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      __$$_PictureCopyWithImpl<_$_Picture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureToJson(
      this,
    );
  }
}

abstract class _Picture implements Picture {
  const factory _Picture({final String? pictureId, final String? currentUrl}) =
      _$_Picture;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$_Picture.fromJson;

  @override
  String? get pictureId;
  @override
  String? get currentUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      throw _privateConstructorUsedError;
}
