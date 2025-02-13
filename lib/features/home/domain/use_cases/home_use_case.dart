import 'package:injectable/injectable.dart';

import '../repositories/home_repository.dart';

@injectable
class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
