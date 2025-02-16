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

BlogPostSummaryModel _$BlogPostSummaryModelFromJson(Map<String, dynamic> json) {
  return _BlogPostSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$BlogPostSummaryModel {
  String get title => throw _privateConstructorUsedError;
  BlogPostStatus get status => throw _privateConstructorUsedError;
  BlogPostContentStatus get contentStatus => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get publishedAt => throw _privateConstructorUsedError;

  /// Serializes this BlogPostSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogPostSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogPostSummaryModelCopyWith<BlogPostSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostSummaryModelCopyWith<$Res> {
  factory $BlogPostSummaryModelCopyWith(BlogPostSummaryModel value,
          $Res Function(BlogPostSummaryModel) then) =
      _$BlogPostSummaryModelCopyWithImpl<$Res, BlogPostSummaryModel>;
  @useResult
  $Res call(
      {String title,
      BlogPostStatus status,
      BlogPostContentStatus contentStatus,
      DateTime? createdAt,
      DateTime? publishedAt});
}

/// @nodoc
class _$BlogPostSummaryModelCopyWithImpl<$Res,
        $Val extends BlogPostSummaryModel>
    implements $BlogPostSummaryModelCopyWith<$Res> {
  _$BlogPostSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogPostSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? contentStatus = null,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogPostStatus,
      contentStatus: null == contentStatus
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as BlogPostContentStatus,
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
abstract class _$$BlogPostSummaryModelImplCopyWith<$Res>
    implements $BlogPostSummaryModelCopyWith<$Res> {
  factory _$$BlogPostSummaryModelImplCopyWith(_$BlogPostSummaryModelImpl value,
          $Res Function(_$BlogPostSummaryModelImpl) then) =
      __$$BlogPostSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      BlogPostStatus status,
      BlogPostContentStatus contentStatus,
      DateTime? createdAt,
      DateTime? publishedAt});
}

/// @nodoc
class __$$BlogPostSummaryModelImplCopyWithImpl<$Res>
    extends _$BlogPostSummaryModelCopyWithImpl<$Res, _$BlogPostSummaryModelImpl>
    implements _$$BlogPostSummaryModelImplCopyWith<$Res> {
  __$$BlogPostSummaryModelImplCopyWithImpl(_$BlogPostSummaryModelImpl _value,
      $Res Function(_$BlogPostSummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogPostSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? contentStatus = null,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_$BlogPostSummaryModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlogPostStatus,
      contentStatus: null == contentStatus
          ? _value.contentStatus
          : contentStatus // ignore: cast_nullable_to_non_nullable
              as BlogPostContentStatus,
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
class _$BlogPostSummaryModelImpl
    with DiagnosticableTreeMixin
    implements _BlogPostSummaryModel {
  const _$BlogPostSummaryModelImpl(
      {required this.title,
      required this.status,
      required this.contentStatus,
      this.createdAt,
      this.publishedAt});

  factory _$BlogPostSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogPostSummaryModelImplFromJson(json);

  @override
  final String title;
  @override
  final BlogPostStatus status;
  @override
  final BlogPostContentStatus contentStatus;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? publishedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlogPostSummaryModel(title: $title, status: $status, contentStatus: $contentStatus, createdAt: $createdAt, publishedAt: $publishedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlogPostSummaryModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('contentStatus', contentStatus))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('publishedAt', publishedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogPostSummaryModelImpl &&
            (identical(other.title, title) || other.title == title) &&
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
      runtimeType, title, status, contentStatus, createdAt, publishedAt);

  /// Create a copy of BlogPostSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogPostSummaryModelImplCopyWith<_$BlogPostSummaryModelImpl>
      get copyWith =>
          __$$BlogPostSummaryModelImplCopyWithImpl<_$BlogPostSummaryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogPostSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _BlogPostSummaryModel implements BlogPostSummaryModel {
  const factory _BlogPostSummaryModel(
      {required final String title,
      required final BlogPostStatus status,
      required final BlogPostContentStatus contentStatus,
      final DateTime? createdAt,
      final DateTime? publishedAt}) = _$BlogPostSummaryModelImpl;

  factory _BlogPostSummaryModel.fromJson(Map<String, dynamic> json) =
      _$BlogPostSummaryModelImpl.fromJson;

  @override
  String get title;
  @override
  BlogPostStatus get status;
  @override
  BlogPostContentStatus get contentStatus;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get publishedAt;

  /// Create a copy of BlogPostSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogPostSummaryModelImplCopyWith<_$BlogPostSummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
