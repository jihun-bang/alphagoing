import 'package:injectable/injectable.dart';

import '../repositories/keyword_analyzer_repository.dart';

@injectable
class KeywordAnalyzerUseCase {
  final KeywordAnalyzerRepository _repository;

  KeywordAnalyzerUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
