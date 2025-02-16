// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) {
  return _BlogModel.fromJson(json);
}

/// @nodoc
mixin _$BlogModel {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  BlogType get blogType => throw _privateConstructorUsedError;
  BlogConnectionStatus get connectionStatus =>
      throw _privateConstructorUsedError;

  /// Serializes this BlogModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogModelCopyWith<BlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogModelCopyWith<$Res> {
  factory $BlogModelCopyWith(BlogModel value, $Res Function(BlogModel) then) =
      _$BlogModelCopyWithImpl<$Res, BlogModel>;
  @useResult
  $Res call(
      {String id,
      String url,
      String name,
      BlogType blogType,
      BlogConnectionStatus connectionStatus});
}

/// @nodoc
class _$BlogModelCopyWithImpl<$Res, $Val extends BlogModel>
    implements $BlogModelCopyWith<$Res> {
  _$BlogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? blogType = null,
    Object? connectionStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      blogType: null == blogType
          ? _value.blogType
          : blogType // ignore: cast_nullable_to_non_nullable
              as BlogType,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as BlogConnectionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogModelImplCopyWith<$Res>
    implements $BlogModelCopyWith<$Res> {
  factory _$$BlogModelImplCopyWith(
          _$BlogModelImpl value, $Res Function(_$BlogModelImpl) then) =
      __$$BlogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      String name,
      BlogType blogType,
      BlogConnectionStatus connectionStatus});
}

/// @nodoc
class __$$BlogModelImplCopyWithImpl<$Res>
    extends _$BlogModelCopyWithImpl<$Res, _$BlogModelImpl>
    implements _$$BlogModelImplCopyWith<$Res> {
  __$$BlogModelImplCopyWithImpl(
      _$BlogModelImpl _value, $Res Function(_$BlogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? blogType = null,
    Object? connectionStatus = null,
  }) {
    return _then(_$BlogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      blogType: null == blogType
          ? _value.blogType
          : blogType // ignore: cast_nullable_to_non_nullable
              as BlogType,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as BlogConnectionStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BlogModelImpl with DiagnosticableTreeMixin implements _BlogModel {
  const _$BlogModelImpl(
      {required this.id,
      required this.url,
      required this.name,
      required this.blogType,
      required this.connectionStatus});

  factory _$BlogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogModelImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String name;
  @override
  final BlogType blogType;
  @override
  final BlogConnectionStatus connectionStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogModel(id: $id, url: $url, name: $name, blogType: $blogType, connectionStatus: $connectionStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('blogType', blogType))
      ..add(DiagnosticsProperty('connectionStatus', connectionStatus));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.blogType, blogType) ||
                other.blogType == blogType) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, name, blogType, connectionStatus);

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      __$$BlogModelImplCopyWithImpl<_$BlogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogModelImplToJson(
      this,
    );
  }
}

abstract class _BlogModel implements BlogModel {
  const factory _BlogModel(
      {required final String id,
      required final String url,
      required final String name,
      required final BlogType blogType,
      required final BlogConnectionStatus connectionStatus}) = _$BlogModelImpl;

  factory _BlogModel.fromJson(Map<String, dynamic> json) =
      _$BlogModelImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String get name;
  @override
  BlogType get blogType;
  @override
  BlogConnectionStatus get connectionStatus;

  /// Create a copy of BlogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
