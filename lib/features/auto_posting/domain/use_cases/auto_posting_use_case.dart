import 'package:injectable/injectable.dart';

import '../repositories/auto_posting_repository.dart';

@injectable
class AutoPostingUseCase {
  final AutoPostingRepository _repository;

  AutoPostingUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
