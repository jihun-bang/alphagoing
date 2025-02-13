// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_sign_up_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OauthSignUpRequestModel _$OauthSignUpRequestModelFromJson(
    Map<String, dynamic> json) {
  return _OauthSignUpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$OauthSignUpRequestModel {
  @JsonKey(name: 'username')
  String get email => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  bool get termsOfUse => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketingConsent')
  bool get marketingAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get termsAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get privacyAgree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  bool get over14Agree => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  OauthProviderType get provider => throw _privateConstructorUsedError;

  /// Serializes this OauthSignUpRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OauthSignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OauthSignUpRequestModelCopyWith<OauthSignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OauthSignUpRequestModelCopyWith<$Res> {
  factory $OauthSignUpRequestModelCopyWith(OauthSignUpRequestModel value,
          $Res Function(OauthSignUpRequestModel) then) =
      _$OauthSignUpRequestModelCopyWithImpl<$Res, OauthSignUpRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String email,
      String nickname,
      String providerId,
      bool termsOfUse,
      @JsonKey(name: 'marketingConsent') bool marketingAgree,
      @JsonKey(includeToJson: false) bool termsAgree,
      @JsonKey(includeToJson: false) bool privacyAgree,
      @JsonKey(includeToJson: false) bool over14Agree,
      @JsonKey(includeToJson: false) OauthProviderType provider});
}

/// @nodoc
class _$OauthSignUpRequestModelCopyWithImpl<$Res,
        $Val extends OauthSignUpRequestModel>
    implements $OauthSignUpRequestModelCopyWith<$Res> {
  _$OauthSignUpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OauthSignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? nickname = null,
    Object? providerId = null,
    Object? termsOfUse = null,
    Object? marketingAgree = null,
    Object? termsAgree = null,
    Object? privacyAgree = null,
    Object? over14Agree = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
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
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as OauthProviderType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OauthSignUpRequestModelImplCopyWith<$Res>
    implements $OauthSignUpRequestModelCopyWith<$Res> {
  factory _$$OauthSignUpRequestModelImplCopyWith(
          _$OauthSignUpRequestModelImpl value,
          $Res Function(_$OauthSignUpRequestModelImpl) then) =
      __$$OauthSignUpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String email,
      String nickname,
      String providerId,
      bool termsOfUse,
      @JsonKey(name: 'marketingConsent') bool marketingAgree,
      @JsonKey(includeToJson: false) bool termsAgree,
      @JsonKey(includeToJson: false) bool privacyAgree,
      @JsonKey(includeToJson: false) bool over14Agree,
      @JsonKey(includeToJson: false) OauthProviderType provider});
}

/// @nodoc
class __$$OauthSignUpRequestModelImplCopyWithImpl<$Res>
    extends _$OauthSignUpRequestModelCopyWithImpl<$Res,
        _$OauthSignUpRequestModelImpl>
    implements _$$OauthSignUpRequestModelImplCopyWith<$Res> {
  __$$OauthSignUpRequestModelImplCopyWithImpl(
      _$OauthSignUpRequestModelImpl _value,
      $Res Function(_$OauthSignUpRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OauthSignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? nickname = null,
    Object? providerId = null,
    Object? termsOfUse = null,
    Object? marketingAgree = null,
    Object? termsAgree = null,
    Object? privacyAgree = null,
    Object? over14Agree = null,
    Object? provider = null,
  }) {
    return _then(_$OauthSignUpRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
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
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as OauthProviderType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OauthSignUpRequestModelImpl
    with DiagnosticableTreeMixin
    implements _OauthSignUpRequestModel {
  const _$OauthSignUpRequestModelImpl(
      {@JsonKey(name: 'username') this.email = '',
      this.nickname = '',
      this.providerId = '',
      this.termsOfUse = false,
      @JsonKey(name: 'marketingConsent') this.marketingAgree = false,
      @JsonKey(includeToJson: false) this.termsAgree = false,
      @JsonKey(includeToJson: false) this.privacyAgree = false,
      @JsonKey(includeToJson: false) this.over14Agree = false,
      @JsonKey(includeToJson: false) this.provider = OauthProviderType.google});

  factory _$OauthSignUpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OauthSignUpRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String email;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String providerId;
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
  @JsonKey(includeToJson: false)
  final OauthProviderType provider;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OauthSignUpRequestModel(email: $email, nickname: $nickname, providerId: $providerId, termsOfUse: $termsOfUse, marketingAgree: $marketingAgree, termsAgree: $termsAgree, privacyAgree: $privacyAgree, over14Agree: $over14Agree, provider: $provider)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OauthSignUpRequestModel'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('nickname', nickname))
      ..add(DiagnosticsProperty('providerId', providerId))
      ..add(DiagnosticsProperty('termsOfUse', termsOfUse))
      ..add(DiagnosticsProperty('marketingAgree', marketingAgree))
      ..add(DiagnosticsProperty('termsAgree', termsAgree))
      ..add(DiagnosticsProperty('privacyAgree', privacyAgree))
      ..add(DiagnosticsProperty('over14Agree', over14Agree))
      ..add(DiagnosticsProperty('provider', provider));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OauthSignUpRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.termsOfUse, termsOfUse) ||
                other.termsOfUse == termsOfUse) &&
            (identical(other.marketingAgree, marketingAgree) ||
                other.marketingAgree == marketingAgree) &&
            (identical(other.termsAgree, termsAgree) ||
                other.termsAgree == termsAgree) &&
            (identical(other.privacyAgree, privacyAgree) ||
                other.privacyAgree == privacyAgree) &&
            (identical(other.over14Agree, over14Agree) ||
                other.over14Agree == over14Agree) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      nickname,
      providerId,
      termsOfUse,
      marketingAgree,
      termsAgree,
      privacyAgree,
      over14Agree,
      provider);

  /// Create a copy of OauthSignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OauthSignUpRequestModelImplCopyWith<_$OauthSignUpRequestModelImpl>
      get copyWith => __$$OauthSignUpRequestModelImplCopyWithImpl<
          _$OauthSignUpRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OauthSignUpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _OauthSignUpRequestModel implements OauthSignUpRequestModel {
  const factory _OauthSignUpRequestModel(
          {@JsonKey(name: 'username') final String email,
          final String nickname,
          final String providerId,
          final bool termsOfUse,
          @JsonKey(name: 'marketingConsent') final bool marketingAgree,
          @JsonKey(includeToJson: false) final bool termsAgree,
          @JsonKey(includeToJson: false) final bool privacyAgree,
          @JsonKey(includeToJson: false) final bool over14Agree,
          @JsonKey(includeToJson: false) final OauthProviderType provider}) =
      _$OauthSignUpRequestModelImpl;

  factory _OauthSignUpRequestModel.fromJson(Map<String, dynamic> json) =
      _$OauthSignUpRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get email;
  @override
  String get nickname;
  @override
  String get providerId;
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
  @override
  @JsonKey(includeToJson: false)
  OauthProviderType get provider;

  /// Create a copy of OauthSignUpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OauthSignUpRequestModelImplCopyWith<_$OauthSignUpRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
