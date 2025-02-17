import 'package:alphagoing/core/data/exception/exception.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_post_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/auto_posting_repository.dart';
import '../data_source/auto_posting_data_source.dart';

@Injectable(as: AutoPostingRepository)
class AutoPostingRepositoryImpl extends AutoPostingRepository {
  final AutoPostingDataSource _dataSource;

  AutoPostingRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, List<String>>> createTitles(
      {required String keyword}) {
    return _dataSource.createTitles(keyword: keyword);
  }

  @override
  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords() {
    return _dataSource.fetchKeywords();
  }

  @override
  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId}) {
    return _dataSource.fetchPosts(keywordId: keywordId);
  }
}
