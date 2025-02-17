import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';
import '../../data/models/blog_keyword_model.dart';
import '../../data/models/blog_post_model.dart';

abstract class AutoPostingRepository {
  Future<Either<Failure, List<String>>> createTitles({required String keyword});
  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords();
  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId});
}
