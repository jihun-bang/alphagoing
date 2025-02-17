import 'package:alphagoing/features/auto_posting/domain/use_cases/auto_posting_use_case.dart';
import 'package:alphagoing/injector/injector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/blog_post_model.dart';

part 'post_list_provider.g.dart';

@riverpod
Future<List<BlogPostModel>> postList(PostListRef ref, String keywordId) async {
  if (keywordId.isEmpty) {
    return [];
  }
  return getIt<AutoPostingUseCase>().fetchPosts(keywordId: keywordId);
}
