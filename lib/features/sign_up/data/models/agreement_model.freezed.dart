// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agreement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgreementModel _$AgreementModelFromJson(Map<String, dynamic> json) {
  return _AgreementModel.fromJson(json);
}

/// @nodoc
mixin _$AgreementModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get sort => throw _privateConstructorUsedError;
  AgreementType get requiredYn => throw _privateConstructorUsedError;

  /// Serializes this AgreementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgreementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgreementModelCopyWith<AgreementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementModelCopyWith<$Res> {
  factory $AgreementModelCopyWith(
          AgreementModel value, $Res Function(AgreementModel) then) =
      _$AgreementModelCopyWithImpl<$Res, AgreementModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      String sort,
      AgreementType requiredYn});
}

/// @nodoc
class _$AgreementModelCopyWithImpl<$Res, $Val extends AgreementModel>
    implements $AgreementModelCopyWith<$Res> {
  _$AgreementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgreementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? sort = null,
    Object? requiredYn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      requiredYn: null == requiredYn
          ? _value.requiredYn
          : requiredYn // ignore: cast_nullable_to_non_nullable
              as AgreementType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementModelImplCopyWith<$Res>
    implements $AgreementModelCopyWith<$Res> {
  factory _$$AgreementModelImplCopyWith(_$AgreementModelImpl value,
          $Res Function(_$AgreementModelImpl) then) =
      __$$AgreementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      String sort,
      AgreementType requiredYn});
}

/// @nodoc
class __$$AgreementModelImplCopyWithImpl<$Res>
    extends _$AgreementModelCopyWithImpl<$Res, _$AgreementModelImpl>
    implements _$$AgreementModelImplCopyWith<$Res> {
  __$$AgreementModelImplCopyWithImpl(
      _$AgreementModelImpl _value, $Res Function(_$AgreementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgreementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? sort = null,
    Object? requiredYn = null,
  }) {
    return _then(_$AgreementModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      requiredYn: null == requiredYn
          ? _value.requiredYn
          : requiredYn // ignore: cast_nullable_to_non_nullable
              as AgreementType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementModelImpl
    with DiagnosticableTreeMixin
    implements _AgreementModel {
  const _$AgreementModelImpl(
      {required this.id,
      required this.title,
      this.description,
      required this.sort,
      required this.requiredYn});

  factory _$AgreementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgreementModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String sort;
  @override
  final AgreementType requiredYn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AgreementModel(id: $id, title: $title, description: $description, sort: $sort, requiredYn: $requiredYn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AgreementModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('requiredYn', requiredYn));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.requiredYn, requiredYn) ||
                other.requiredYn == requiredYn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, sort, requiredYn);

  /// Create a copy of AgreementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementModelImplCopyWith<_$AgreementModelImpl> get copyWith =>
      __$$AgreementModelImplCopyWithImpl<_$AgreementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementModelImplToJson(
      this,
    );
  }
}

abstract class _AgreementModel implements AgreementModel {
  const factory _AgreementModel(
      {required final int id,
      required final String title,
      final String? description,
      required final String sort,
      required final AgreementType requiredYn}) = _$AgreementModelImpl;

  factory _AgreementModel.fromJson(Map<String, dynamic> json) =
      _$AgreementModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String get sort;
  @override
  AgreementType get requiredYn;

  /// Create a copy of AgreementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgreementModelImplCopyWith<_$AgreementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
