// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OauthRequestModel _$OauthRequestModelFromJson(Map<String, dynamic> json) {
  return _OauthRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OauthRequestModel {
  OauthProviderType get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String get token => throw _privateConstructorUsedError;

  /// Serializes this OauthRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OauthRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OauthRequestModelCopyWith<OauthRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OauthRequestModelCopyWith<$Res> {
  factory $OauthRequestModelCopyWith(
          OauthRequestModel value, $Res Function(OauthRequestModel) then) =
      _$OauthRequestModelCopyWithImpl<$Res, OauthRequestModel>;
  @useResult
  $Res call({OauthProviderType provider, @JsonKey(name: 'code') String token});
}

/// @nodoc
class _$OauthRequestModelCopyWithImpl<$Res, $Val extends OauthRequestModel>
    implements $OauthRequestModelCopyWith<$Res> {
  _$OauthRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OauthRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as OauthProviderType,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OauthRequestModelImplCopyWith<$Res>
    implements $OauthRequestModelCopyWith<$Res> {
  factory _$$OauthRequestModelImplCopyWith(_$OauthRequestModelImpl value,
          $Res Function(_$OauthRequestModelImpl) then) =
      __$$OauthRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OauthProviderType provider, @JsonKey(name: 'code') String token});
}

/// @nodoc
class __$$OauthRequestModelImplCopyWithImpl<$Res>
    extends _$OauthRequestModelCopyWithImpl<$Res, _$OauthRequestModelImpl>
    implements _$$OauthRequestModelImplCopyWith<$Res> {
  __$$OauthRequestModelImplCopyWithImpl(_$OauthRequestModelImpl _value,
      $Res Function(_$OauthRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OauthRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? token = null,
  }) {
    return _then(_$OauthRequestModelImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as OauthProviderType,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OauthRequestModelImpl implements _OauthRequestModel {
  const _$OauthRequestModelImpl(
      {required this.provider, @JsonKey(name: 'code') required this.token});

  factory _$OauthRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OauthRequestModelImplFromJson(json);

  @override
  final OauthProviderType provider;
  @override
  @JsonKey(name: 'code')
  final String token;

  @override
  String toString() {
    return 'OauthRequestModel(provider: $provider, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OauthRequestModelImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, provider, token);

  /// Create a copy of OauthRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OauthRequestModelImplCopyWith<_$OauthRequestModelImpl> get copyWith =>
      __$$OauthRequestModelImplCopyWithImpl<_$OauthRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OauthRequestModelImplToJson(
      this,
    );
  }
}

abstract class _OauthRequestModel implements OauthRequestModel {
  const factory _OauthRequestModel(
          {required final OauthProviderType provider,
          @JsonKey(name: 'code') required final String token}) =
      _$OauthRequestModelImpl;

  factory _OauthRequestModel.fromJson(Map<String, dynamic> json) =
      _$OauthRequestModelImpl.fromJson;

  @override
  OauthProviderType get provider;
  @override
  @JsonKey(name: 'code')
  String get token;

  /// Create a copy of OauthRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OauthRequestModelImplCopyWith<_$OauthRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
