import 'package:injectable/injectable.dart';

import '../repositories/notice_repository.dart';

@injectable
class NoticeUseCase {
  final NoticeRepository _repository;

  NoticeUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
