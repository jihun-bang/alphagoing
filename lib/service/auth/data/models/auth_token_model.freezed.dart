// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthTokenModel _$AuthTokenModelFromJson(Map<String, dynamic> json) {
  return _AuthTokenModel.fromJson(json);
}

/// @nodoc
mixin _$AuthTokenModel {
  String get accessToken => throw _privateConstructorUsedError;

  /// Serializes this AuthTokenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokenModelCopyWith<AuthTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenModelCopyWith<$Res> {
  factory $AuthTokenModelCopyWith(
          AuthTokenModel value, $Res Function(AuthTokenModel) then) =
      _$AuthTokenModelCopyWithImpl<$Res, AuthTokenModel>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$AuthTokenModelCopyWithImpl<$Res, $Val extends AuthTokenModel>
    implements $AuthTokenModelCopyWith<$Res> {
  _$AuthTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenModelImplCopyWith<$Res>
    implements $AuthTokenModelCopyWith<$Res> {
  factory _$$AuthTokenModelImplCopyWith(_$AuthTokenModelImpl value,
          $Res Function(_$AuthTokenModelImpl) then) =
      __$$AuthTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$AuthTokenModelImplCopyWithImpl<$Res>
    extends _$AuthTokenModelCopyWithImpl<$Res, _$AuthTokenModelImpl>
    implements _$$AuthTokenModelImplCopyWith<$Res> {
  __$$AuthTokenModelImplCopyWithImpl(
      _$AuthTokenModelImpl _value, $Res Function(_$AuthTokenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$AuthTokenModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AuthTokenModelImpl implements _AuthTokenModel {
  const _$AuthTokenModelImpl({required this.accessToken});

  factory _$AuthTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenModelImplFromJson(json);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthTokenModel(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  /// Create a copy of AuthTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenModelImplCopyWith<_$AuthTokenModelImpl> get copyWith =>
      __$$AuthTokenModelImplCopyWithImpl<_$AuthTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenModelImplToJson(
      this,
    );
  }
}

abstract class _AuthTokenModel implements AuthTokenModel {
  const factory _AuthTokenModel({required final String accessToken}) =
      _$AuthTokenModelImpl;

  factory _AuthTokenModel.fromJson(Map<String, dynamic> json) =
      _$AuthTokenModelImpl.fromJson;

  @override
  String get accessToken;

  /// Create a copy of AuthTokenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokenModelImplCopyWith<_$AuthTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
