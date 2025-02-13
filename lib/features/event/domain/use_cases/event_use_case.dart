import 'package:injectable/injectable.dart';

import '../repositories/event_repository.dart';

@injectable
class EventUseCase {
  final EventRepository _repository;

  EventUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
