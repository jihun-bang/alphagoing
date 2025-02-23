import 'package:alphagoing/core/data/exception/server_code.dart';
import 'package:alphagoing/core/utils/logger.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_post_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/data/exception/exception.dart';

abstract class AutoPostingDataSource {
  Future<Either<Failure, bool>> createTitles({required String keyword});

  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords();

  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId});
}

@Injectable(as: AutoPostingDataSource)
class AutoPostingDataSourceImpl implements AutoPostingDataSource {
  final FunctionsClient _api = Supabase.instance.client.functions;

  AutoPostingDataSourceImpl();

  @override
  Future<Either<Failure, bool>> createTitles({required String keyword}) async {
    try {
      await _api.invoke(
        'generate-blog-titles',
        body: {'keyword': keyword},
      );
      return Right(true);
    } catch (e) {
      Logger.e(e);
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords() async {
    try {
      return Supabase.instance.client
          .from('blog_post_keywords')
          .select('*')
          .order('created_at', ascending: false)
          .then((value) {
        return Right(value.map((e) => BlogKeywordModel.fromJson(e)).toList());
      });
    } catch (e) {
      Logger.e(e);
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId}) async {
    try {
      Logger.d(keywordId);
      return Supabase.instance.client
          .from('blog_posts')
          .select('*')
          .eq('keyword_id', keywordId)
          .order('created_at', ascending: false)
          .then((value) {
        Logger.d(value);
        return Right(value.map((e) => BlogPostModel.fromJson(e)).toList());
      });
    } catch (e) {
      Logger.e(e);
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }
}
