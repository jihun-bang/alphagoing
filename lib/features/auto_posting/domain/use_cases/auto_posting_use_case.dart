import 'package:alphagoing/core/widgets/dialogs/message_toast.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_post_model.dart';
import 'package:injectable/injectable.dart';

import '../repositories/auto_posting_repository.dart';

@injectable
class AutoPostingUseCase {
  final AutoPostingRepository _repository;

  AutoPostingUseCase(this._repository);

  Future<List<String>> createTitles({required String keyword}) {
    return _repository
        .createTitles(keyword: keyword)
        .then((value) => value.fold(
              (l) {
                showMessageToast(message: l.message);
                return [];
              },
              (r) => r,
            ));
  }

  Future<List<BlogKeywordModel>> fetchKeywords() {
    return _repository.fetchKeywords().then((value) => value.fold(
          (l) {
            showMessageToast(message: l.message);
            return [];
          },
          (r) => r,
        ));
  }

  Future<List<BlogPostModel>> fetchPosts({required String keywordId}) {
    return _repository
        .fetchPosts(keywordId: keywordId)
        .then((value) => value.fold(
              (l) {
                showMessageToast(message: l.message);
                return [];
              },
              (r) => r,
            ));
  }
}
