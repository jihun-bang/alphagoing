// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogPostModel _$BlogPostModelFromJson(Map<String, dynamic> json) {
  return _BlogPostModel.fromJson(json);
}

/// @nodoc
mixin _$BlogPostModel {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Map<String, dynamic> get content => throw _privateConstructorUsedError;
  BlogPostStatus get status => throw _privateConstructorUsedError;
  BlogPostContentStatus? get contentStatus =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this BlogPostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogPostModelCopyWith<BlogPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostModelCopyWith<$Res> {
  factory $BlogPostModelCopyWith(
          BlogPostModel value, $Res Function(BlogPostModel) then) =
      _$BlogPostModelCopyWithImpl<$Res, BlogPostModel>;
  @useResult
  $Res call(
      {String id,
      String sessionId,
      String title,
      Map<String, dynamic> content,
      BlogPostStatus status,
      BlogPostContentStatus? contentStatus,
      DateTime? createdAt,
      DateTime? publishedAt});
}

/// @nodoc
class _$BlogPostModelCopyWithImpl<$Res, $Val extends BlogPostModel>
    implements $BlogPostModelCopyWith<$Res> {
  _$BlogPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
    Object? contentStatus = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogPostStatus,
      contentStatus: freezed == contentStatus
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as BlogPostContentStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogPostModelImplCopyWith<$Res>
    implements $BlogPostModelCopyWith<$Res> {
  factory _$$BlogPostModelImplCopyWith(
          _$BlogPostModelImpl value, $Res Function(_$BlogPostModelImpl) then) =
      __$$BlogPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sessionId,
      String title,
      Map<String, dynamic> content,
      BlogPostStatus status,
      BlogPostContentStatus? contentStatus,
      DateTime? createdAt,
      DateTime? publishedAt});
}

/// @nodoc
class __$$BlogPostModelImplCopyWithImpl<$Res>
    extends _$BlogPostModelCopyWithImpl<$Res, _$BlogPostModelImpl>
    implements _$$BlogPostModelImplCopyWith<$Res> {
  __$$BlogPostModelImplCopyWithImpl(
      _$BlogPostModelImpl _value, $Res Function(_$BlogPostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? status = null,
    Object? contentStatus = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_$BlogPostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogPostStatus,
      contentStatus: freezed == contentStatus
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as BlogPostContentStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BlogPostModelImpl
    with DiagnosticableTreeMixin
    implements _BlogPostModel {
  const _$BlogPostModelImpl(
      {required this.id,
      required this.sessionId,
      required this.title,
      required final Map<String, dynamic> content,
      required this.status,
      this.contentStatus,
      this.createdAt,
      this.publishedAt})
      : _content = content;

  factory _$BlogPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogPostModelImplFromJson(json);

  @override
  final String id;
  @override
  final String sessionId;
  @override
  final String title;
  final Map<String, dynamic> _content;
  @override
  Map<String, dynamic> get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  @override
  final BlogPostStatus status;
  @override
  final BlogPostContentStatus? contentStatus;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? publishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogPostModel(id: $id, sessionId: $sessionId, title: $title, content: $content, status: $status, contentStatus: $contentStatus, createdAt: $createdAt, publishedAt: $publishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogPostModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sessionId', sessionId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('contentStatus', contentStatus))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('publishedAt', publishedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogPostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.contentStatus, contentStatus) ||
                other.contentStatus == contentStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sessionId,
      title,
      const DeepCollectionEquality().hash(_content),
      status,
      contentStatus,
      createdAt,
      publishedAt);

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogPostModelImplCopyWith<_$BlogPostModelImpl> get copyWith =>
      __$$BlogPostModelImplCopyWithImpl<_$BlogPostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogPostModelImplToJson(
      this,
    );
  }
}

abstract class _BlogPostModel implements BlogPostModel {
  const factory _BlogPostModel(
      {required final String id,
      required final String sessionId,
      required final String title,
      required final Map<String, dynamic> content,
      required final BlogPostStatus status,
      final BlogPostContentStatus? contentStatus,
      final DateTime? createdAt,
      final DateTime? publishedAt}) = _$BlogPostModelImpl;

  factory _BlogPostModel.fromJson(Map<String, dynamic> json) =
      _$BlogPostModelImpl.fromJson;

  @override
  String get id;
  @override
  String get sessionId;
  @override
  String get title;
  @override
  Map<String, dynamic> get content;
  @override
  BlogPostStatus get status;
  @override
  BlogPostContentStatus? get contentStatus;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get publishedAt;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogPostModelImplCopyWith<_$BlogPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
