import 'package:alphagoing/core/data/exception/server_code.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/features/auto_posting/data/models/blog_post_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/data/exception/exception.dart';

abstract class AutoPostingDataSource {
  Future<Either<Failure, List<String>>> createTitles({required String keyword});
  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords();
  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId});
}

@Injectable(as: AutoPostingDataSource)
class AutoPostingDataSourceImpl implements AutoPostingDataSource {
  final FunctionsClient _api = Supabase.instance.client.functions;

  AutoPostingDataSourceImpl();

  @override
  Future<Either<Failure, List<String>>> createTitles(
      {required String keyword}) async {
    try {
      final response = await _api.invoke(
        'generate-titles',
        body: {'keyword': keyword},
      );

      if (response.data != null) {
        return Left(ServerFailure(
            code: ServerCode.internalServerError, message: 'No data'));
      }

      final titles = List<String>.from(response.data);
      return Right(titles);
    } catch (e) {
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogKeywordModel>>> fetchKeywords() async {
    try {
      return Supabase.instance.client
          .from('chat_sessions')
          .select('*')
          .not('keyword', 'is', null)
          .order('created_at', ascending: false)
          .then((value) {
        return Right(value.map((e) => BlogKeywordModel.fromJson(e)).toList());
      });
    } catch (e) {
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BlogPostModel>>> fetchPosts(
      {required String keywordId}) async {
    try {
      return Supabase.instance.client
          .from('blog_contents')
          .select('*')
          .eq('session_id', keywordId)
          .order('created_at', ascending: false)
          .then((value) {
        print(value);
        return Right(value.map((e) => BlogPostModel.fromJson(e)).toList());
      });
    } catch (e) {
      return Left(ServerFailure(
          code: ServerCode.internalServerError, message: e.toString()));
    }
  }
}
