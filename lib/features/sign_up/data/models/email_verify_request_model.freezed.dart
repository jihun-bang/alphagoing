// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verify_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailVerifyRequestModel _$EmailVerifyRequestModelFromJson(
    Map<String, dynamic> json) {
  return _EmailVerifyRequestModel.fromJson(json);
}

/// @nodoc
mixin _$EmailVerifyRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this EmailVerifyRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmailVerifyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailVerifyRequestModelCopyWith<EmailVerifyRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerifyRequestModelCopyWith<$Res> {
  factory $EmailVerifyRequestModelCopyWith(EmailVerifyRequestModel value,
          $Res Function(EmailVerifyRequestModel) then) =
      _$EmailVerifyRequestModelCopyWithImpl<$Res, EmailVerifyRequestModel>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$EmailVerifyRequestModelCopyWithImpl<$Res,
        $Val extends EmailVerifyRequestModel>
    implements $EmailVerifyRequestModelCopyWith<$Res> {
  _$EmailVerifyRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerifyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerifyRequestModelImplCopyWith<$Res>
    implements $EmailVerifyRequestModelCopyWith<$Res> {
  factory _$$EmailVerifyRequestModelImplCopyWith(
          _$EmailVerifyRequestModelImpl value,
          $Res Function(_$EmailVerifyRequestModelImpl) then) =
      __$$EmailVerifyRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$EmailVerifyRequestModelImplCopyWithImpl<$Res>
    extends _$EmailVerifyRequestModelCopyWithImpl<$Res,
        _$EmailVerifyRequestModelImpl>
    implements _$$EmailVerifyRequestModelImplCopyWith<$Res> {
  __$$EmailVerifyRequestModelImplCopyWithImpl(
      _$EmailVerifyRequestModelImpl _value,
      $Res Function(_$EmailVerifyRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerifyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$EmailVerifyRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailVerifyRequestModelImpl implements _EmailVerifyRequestModel {
  const _$EmailVerifyRequestModelImpl(
      {required this.email, required this.code});

  factory _$EmailVerifyRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailVerifyRequestModelImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'EmailVerifyRequestModel(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerifyRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of EmailVerifyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerifyRequestModelImplCopyWith<_$EmailVerifyRequestModelImpl>
      get copyWith => __$$EmailVerifyRequestModelImplCopyWithImpl<
          _$EmailVerifyRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailVerifyRequestModelImplToJson(
      this,
    );
  }
}

abstract class _EmailVerifyRequestModel implements EmailVerifyRequestModel {
  const factory _EmailVerifyRequestModel(
      {required final String email,
      required final String code}) = _$EmailVerifyRequestModelImpl;

  factory _EmailVerifyRequestModel.fromJson(Map<String, dynamic> json) =
      _$EmailVerifyRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of EmailVerifyRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailVerifyRequestModelImplCopyWith<_$EmailVerifyRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
