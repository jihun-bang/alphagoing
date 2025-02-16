// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreditModel _$CreditModelFromJson(Map<String, dynamic> json) {
  return _CreditModel.fromJson(json);
}

/// @nodoc
mixin _$CreditModel {
  String get name => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Serializes this CreditModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreditModelCopyWith<CreditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditModelCopyWith<$Res> {
  factory $CreditModelCopyWith(
          CreditModel value, $Res Function(CreditModel) then) =
      _$CreditModelCopyWithImpl<$Res, CreditModel>;
  @useResult
  $Res call({String name, int amount, int price});
}

/// @nodoc
class _$CreditModelCopyWithImpl<$Res, $Val extends CreditModel>
    implements $CreditModelCopyWith<$Res> {
  _$CreditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreditModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditModelImplCopyWith<$Res>
    implements $CreditModelCopyWith<$Res> {
  factory _$$CreditModelImplCopyWith(
          _$CreditModelImpl value, $Res Function(_$CreditModelImpl) then) =
      __$$CreditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int amount, int price});
}

/// @nodoc
class __$$CreditModelImplCopyWithImpl<$Res>
    extends _$CreditModelCopyWithImpl<$Res, _$CreditModelImpl>
    implements _$$CreditModelImplCopyWith<$Res> {
  __$$CreditModelImplCopyWithImpl(
      _$CreditModelImpl _value, $Res Function(_$CreditModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreditModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? price = null,
  }) {
    return _then(_$CreditModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditModelImpl with DiagnosticableTreeMixin implements _CreditModel {
  const _$CreditModelImpl(
      {required this.name, required this.amount, required this.price});

  factory _$CreditModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditModelImplFromJson(json);

  @override
  final String name;
  @override
  final int amount;
  @override
  final int price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreditModel(name: $name, amount: $amount, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreditModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, price);

  /// Create a copy of CreditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditModelImplCopyWith<_$CreditModelImpl> get copyWith =>
      __$$CreditModelImplCopyWithImpl<_$CreditModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditModelImplToJson(
      this,
    );
  }
}

abstract class _CreditModel implements CreditModel {
  const factory _CreditModel(
      {required final String name,
      required final int amount,
      required final int price}) = _$CreditModelImpl;

  factory _CreditModel.fromJson(Map<String, dynamic> json) =
      _$CreditModelImpl.fromJson;

  @override
  String get name;
  @override
  int get amount;
  @override
  int get price;

  /// Create a copy of CreditModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreditModelImplCopyWith<_$CreditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
