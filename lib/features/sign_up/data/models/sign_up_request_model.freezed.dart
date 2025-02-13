// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) {
  return _SignUpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestModel {
  @JsonKey(name: 'username')
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get confirmPassword => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  bool get termsOfUse => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketingConsent')
  bool get marketingAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get termsAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get privacyAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get over14Agree => throw _privateConstructorUsedError;

  /// Serializes this SignUpRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpRequestModelCopyWith<SignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestModelCopyWith<$Res> {
  factory $SignUpRequestModelCopyWith(
          SignUpRequestModel value, $Res Function(SignUpRequestModel) then) =
      _$SignUpRequestModelCopyWithImpl<$Res, SignUpRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String userName,
      String password,
      @JsonKey(includeToJson: false) String confirmPassword,
      String nickname,
      bool termsOfUse,
      @JsonKey(name: 'marketingConsent') bool marketingAgree,
      @JsonKey(includeToJson: false) bool termsAgree,
      @JsonKey(includeToJson: false) bool privacyAgree,
      @JsonKey(includeToJson: false) bool over14Agree});
}

/// @nodoc
class _$SignUpRequestModelCopyWithImpl<$Res, $Val extends SignUpRequestModel>
    implements $SignUpRequestModelCopyWith<$Res> {
  _$SignUpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? nickname = null,
    Object? termsOfUse = null,
    Object? marketingAgree = null,
    Object? termsAgree = null,
    Object? privacyAgree = null,
    Object? over14Agree = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfUse: null == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingAgree: null == marketingAgree
          ? _value.marketingAgree
          : marketingAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAgree: null == termsAgree
          ? _value.termsAgree
          : termsAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyAgree: null == privacyAgree
          ? _value.privacyAgree
          : privacyAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      over14Agree: null == over14Agree
          ? _value.over14Agree
          : over14Agree // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestModelImplCopyWith<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  factory _$$SignUpRequestModelImplCopyWith(_$SignUpRequestModelImpl value,
          $Res Function(_$SignUpRequestModelImpl) then) =
      __$$SignUpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String userName,
      String password,
      @JsonKey(includeToJson: false) String confirmPassword,
      String nickname,
      bool termsOfUse,
      @JsonKey(name: 'marketingConsent') bool marketingAgree,
      @JsonKey(includeToJson: false) bool termsAgree,
      @JsonKey(includeToJson: false) bool privacyAgree,
      @JsonKey(includeToJson: false) bool over14Agree});
}

/// @nodoc
class __$$SignUpRequestModelImplCopyWithImpl<$Res>
    extends _$SignUpRequestModelCopyWithImpl<$Res, _$SignUpRequestModelImpl>
    implements _$$SignUpRequestModelImplCopyWith<$Res> {
  __$$SignUpRequestModelImplCopyWithImpl(_$SignUpRequestModelImpl _value,
      $Res Function(_$SignUpRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? nickname = null,
    Object? termsOfUse = null,
    Object? marketingAgree = null,
    Object? termsAgree = null,
    Object? privacyAgree = null,
    Object? over14Agree = null,
  }) {
    return _then(_$SignUpRequestModelImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfUse: null == termsOfUse
          ? _value.termsOfUse
          : termsOfUse // ignore: cast_nullable_to_non_nullable
              as bool,
      marketingAgree: null == marketingAgree
          ? _value.marketingAgree
          : marketingAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAgree: null == termsAgree
          ? _value.termsAgree
          : termsAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyAgree: null == privacyAgree
          ? _value.privacyAgree
          : privacyAgree // ignore: cast_nullable_to_non_nullable
              as bool,
      over14Agree: null == over14Agree
          ? _value.over14Agree
          : over14Agree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestModelImpl implements _SignUpRequestModel {
  const _$SignUpRequestModelImpl(
      {@JsonKey(name: 'username') this.userName = '',
      this.password = '',
      @JsonKey(includeToJson: false) this.confirmPassword = '',
      this.nickname = '',
      this.termsOfUse = false,
      @JsonKey(name: 'marketingConsent') this.marketingAgree = false,
      @JsonKey(includeToJson: false) this.termsAgree = false,
      @JsonKey(includeToJson: false) this.privacyAgree = false,
      @JsonKey(includeToJson: false) this.over14Agree = false});

  factory _$SignUpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String userName;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey(includeToJson: false)
  final String confirmPassword;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final bool termsOfUse;
  @override
  @JsonKey(name: 'marketingConsent')
  final bool marketingAgree;
  @override
  @JsonKey(includeToJson: false)
  final bool termsAgree;
  @override
  @JsonKey(includeToJson: false)
  final bool privacyAgree;
  @override
  @JsonKey(includeToJson: false)
  final bool over14Agree;

  @override
  String toString() {
    return 'SignUpRequestModel(userName: $userName, password: $password, confirmPassword: $confirmPassword, nickname: $nickname, termsOfUse: $termsOfUse, marketingAgree: $marketingAgree, termsAgree: $termsAgree, privacyAgree: $privacyAgree, over14Agree: $over14Agree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestModelImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.termsOfUse, termsOfUse) ||
                other.termsOfUse == termsOfUse) &&
            (identical(other.marketingAgree, marketingAgree) ||
                other.marketingAgree == marketingAgree) &&
            (identical(other.termsAgree, termsAgree) ||
                other.termsAgree == termsAgree) &&
            (identical(other.privacyAgree, privacyAgree) ||
                other.privacyAgree == privacyAgree) &&
            (identical(other.over14Agree, over14Agree) ||
                other.over14Agree == over14Agree));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      password,
      confirmPassword,
      nickname,
      termsOfUse,
      marketingAgree,
      termsAgree,
      privacyAgree,
      over14Agree);

  /// Create a copy of SignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      __$$SignUpRequestModelImplCopyWithImpl<_$SignUpRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestModel implements SignUpRequestModel {
  const factory _SignUpRequestModel(
          {@JsonKey(name: 'username') final String userName,
          final String password,
          @JsonKey(includeToJson: false) final String confirmPassword,
          final String nickname,
          final bool termsOfUse,
          @JsonKey(name: 'marketingConsent') final bool marketingAgree,
          @JsonKey(includeToJson: false) final bool termsAgree,
          @JsonKey(includeToJson: false) final bool privacyAgree,
          @JsonKey(includeToJson: false) final bool over14Agree}) =
      _$SignUpRequestModelImpl;

  factory _SignUpRequestModel.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get userName;
  @override
  String get password;
  @override
  @JsonKey(includeToJson: false)
  String get confirmPassword;
  @override
  String get nickname;
  @override
  bool get termsOfUse;
  @override
  @JsonKey(name: 'marketingConsent')
  bool get marketingAgree;
  @override
  @JsonKey(includeToJson: false)
  bool get termsAgree;
  @override
  @JsonKey(includeToJson: false)
  bool get privacyAgree;
  @override
  @JsonKey(includeToJson: false)
  bool get over14Agree;

  /// Create a copy of SignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
