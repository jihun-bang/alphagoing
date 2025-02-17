// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$postListHash() => r'2e666ce141392e4a888eaf752fb56d6c76170818';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [postList].
@ProviderFor(postList)
const postListProvider = PostListFamily();

/// See also [postList].
class PostListFamily extends Family<AsyncValue<List<BlogPostModel>>> {
  /// See also [postList].
  const PostListFamily();

  /// See also [postList].
  PostListProvider call(
    String keywordId,
  ) {
    return PostListProvider(
      keywordId,
    );
  }

  @override
  PostListProvider getProviderOverride(
    covariant PostListProvider provider,
  ) {
    return call(
      provider.keywordId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'postListProvider';
}

/// See also [postList].
class PostListProvider extends AutoDisposeFutureProvider<List<BlogPostModel>> {
  /// See also [postList].
  PostListProvider(
    String keywordId,
  ) : this._internal(
          (ref) => postList(
            ref as PostListRef,
            keywordId,
          ),
          from: postListProvider,
          name: r'postListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$postListHash,
          dependencies: PostListFamily._dependencies,
          allTransitiveDependencies: PostListFamily._allTransitiveDependencies,
          keywordId: keywordId,
        );

  PostListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keywordId,
  }) : super.internal();

  final String keywordId;

  @override
  Override overrideWith(
    FutureOr<List<BlogPostModel>> Function(PostListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PostListProvider._internal(
        (ref) => create(ref as PostListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        keywordId: keywordId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<BlogPostModel>> createElement() {
    return _PostListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PostListProvider && other.keywordId == keywordId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keywordId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PostListRef on AutoDisposeFutureProviderRef<List<BlogPostModel>> {
  /// The parameter `keywordId` of this provider.
  String get keywordId;
}

class _PostListProviderElement
    extends AutoDisposeFutureProviderElement<List<BlogPostModel>>
    with PostListRef {
  _PostListProviderElement(super.provider);

  @override
  String get keywordId => (origin as PostListProvider).keywordId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
