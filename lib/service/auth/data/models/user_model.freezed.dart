// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'signedIn':
      return SignedIn.fromJson(json);
    case 'signedOut':
      return SignedOut.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignedInImplCopyWith<$Res> {
  factory _$$SignedInImplCopyWith(
          _$SignedInImpl value, $Res Function(_$SignedInImpl) then) =
      __$$SignedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String email,
      @JsonKey(name: 'mobileNo') String phoneNumber,
      String affiliation,
      String imageUrl});
}

/// @nodoc
class __$$SignedInImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$SignedInImpl>
    implements _$$SignedInImplCopyWith<$Res> {
  __$$SignedInImplCopyWithImpl(
      _$SignedInImpl _value, $Res Function(_$SignedInImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? affiliation = null,
    Object? imageUrl = null,
  }) {
    return _then(_$SignedInImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      affiliation: null == affiliation
          ? _value.affiliation
          : affiliation // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedInImpl extends SignedIn {
  const _$SignedInImpl(
      {required this.id,
      this.nickname = 'unknown',
      required this.email,
      @JsonKey(name: 'mobileNo') this.phoneNumber = '',
      this.affiliation = '',
      this.imageUrl = '',
      final String? $type})
      : $type = $type ?? 'signedIn',
        super._();

  factory _$SignedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedInImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String nickname;
  @override
  final String email;
  @override
  @JsonKey(name: 'mobileNo')
  final String phoneNumber;
  @override
  @JsonKey()
  final String affiliation;
  @override
  @JsonKey()
  final String imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel.signedIn(id: $id, nickname: $nickname, email: $email, phoneNumber: $phoneNumber, affiliation: $affiliation, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedInImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.affiliation, affiliation) ||
                other.affiliation == affiliation) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, nickname, email, phoneNumber, affiliation, imageUrl);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      __$$SignedInImplCopyWithImpl<_$SignedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) {
    return signedIn(id, nickname, email, phoneNumber, affiliation, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) {
    return signedIn?.call(
        id, nickname, email, phoneNumber, affiliation, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(id, nickname, email, phoneNumber, affiliation, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedInImplToJson(
      this,
    );
  }
}

abstract class SignedIn extends UserModel {
  const factory SignedIn(
      {required final int id,
      final String nickname,
      required final String email,
      @JsonKey(name: 'mobileNo') final String phoneNumber,
      final String affiliation,
      final String imageUrl}) = _$SignedInImpl;
  const SignedIn._() : super._();

  factory SignedIn.fromJson(Map<String, dynamic> json) =
      _$SignedInImpl.fromJson;

  int get id;
  String get nickname;
  String get email;
  @JsonKey(name: 'mobileNo')
  String get phoneNumber;
  String get affiliation;
  String get imageUrl;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignedOutImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedOutImpl extends SignedOut {
  const _$SignedOutImpl([this.message, final String? $type])
      : $type = $type ?? 'signedOut',
        super._();

  factory _$SignedOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedOutImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel.signedOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedOutImplCopyWith<_$SignedOutImpl> get copyWith =>
      __$$SignedOutImplCopyWithImpl<_$SignedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) {
    return signedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) {
    return signedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String nickname,
            String email,
            @JsonKey(name: 'mobileNo') String phoneNumber,
            String affiliation,
            String imageUrl)?
        signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedOutImplToJson(
      this,
    );
  }
}

abstract class SignedOut extends UserModel {
  const factory SignedOut([final String? message]) = _$SignedOutImpl;
  const SignedOut._() : super._();

  factory SignedOut.fromJson(Map<String, dynamic> json) =
      _$SignedOutImpl.fromJson;

  String? get message;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignedOutImplCopyWith<_$SignedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
