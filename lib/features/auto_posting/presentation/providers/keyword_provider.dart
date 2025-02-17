import 'package:alphagoing/features/auto_posting/data/models/blog_keyword_model.dart';
import 'package:alphagoing/injector/injector.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/use_cases/auto_posting_use_case.dart';

part 'keyword_provider.g.dart';

@riverpod
class Keyword extends _$Keyword {
  final _useCase = getIt<AutoPostingUseCase>();

  @override
  List<BlogKeywordModel> build() {
    return [];
  }

  Future<void> fetchKeywords() async {
    final keywords = await _useCase.fetchKeywords();
    state = keywords;
  }
}
