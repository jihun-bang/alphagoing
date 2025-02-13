import 'package:injectable/injectable.dart';

import '../repositories/price_info_repository.dart';

@injectable
class PriceInfoUseCase {
  final PriceInfoRepository _repository;

  PriceInfoUseCase(this._repository);

  Future<bool> fetch() {
    return _repository.fetch().then((value) => value.fold(
          (l) => false,
          (r) => r,
        ));
  }
}
