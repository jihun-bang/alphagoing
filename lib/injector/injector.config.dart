// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/data/remote/network/dio_network_service.dart' as _i380;
import '../features/auto_posting/data/data_source/auto_posting_data_source.dart'
    as _i79;
import '../features/auto_posting/data/repositories/auto_posting_repository_impl.dart'
    as _i213;
import '../features/auto_posting/domain/repositories/auto_posting_repository.dart'
    as _i664;
import '../features/auto_posting/domain/use_cases/auto_posting_use_case.dart'
    as _i995;
import '../features/event/data/data_source/event_data_source.dart' as _i161;
import '../features/event/data/repositories/event_repository_impl.dart'
    as _i217;
import '../features/event/domain/repositories/event_repository.dart' as _i521;
import '../features/event/domain/use_cases/event_use_case.dart' as _i374;
import '../features/home/data/data_source/home_data_source.dart' as _i616;
import '../features/home/data/repositories/home_repository_impl.dart' as _i6;
import '../features/home/domain/repositories/home_repository.dart' as _i66;
import '../features/home/domain/use_cases/home_use_case.dart' as _i634;
import '../features/keyword_analyzer/data/data_source/keyword_analyzer_data_source.dart'
    as _i999;
import '../features/keyword_analyzer/data/repositories/keyword_analyzer_repository_impl.dart'
    as _i644;
import '../features/keyword_analyzer/domain/repositories/keyword_analyzer_repository.dart'
    as _i85;
import '../features/keyword_analyzer/domain/use_cases/keyword_analyzer_use_case.dart'
    as _i239;
import '../features/notice/data/data_source/notice_data_source.dart' as _i103;
import '../features/notice/data/repositories/notice_repository_impl.dart'
    as _i495;
import '../features/notice/domain/repositories/notice_repository.dart' as _i158;
import '../features/notice/domain/use_cases/notice_use_case.dart' as _i133;
import '../features/price_info/data/data_source/price_info_data_source.dart'
    as _i303;
import '../features/price_info/data/repositories/price_info_repository_impl.dart'
    as _i108;
import '../features/price_info/domain/repositories/price_info_repository.dart'
    as _i775;
import '../features/price_info/domain/use_cases/price_info_use_case.dart'
    as _i65;
import '../features/sign_up/data/data_source/sign_up_remote_data_source.dart'
    as _i89;
import '../features/sign_up/data/repositories/sign_up_repository_impl.dart'
    as _i388;
import '../features/sign_up/domain/repositories/sign_up_repository.dart'
    as _i725;
import '../features/sign_up/domain/use_cases/sign_up_use_case.dart' as _i995;
import '../service/auth/data/data_source/auth_remote_data_source.dart' as _i776;
import '../service/auth/data/data_source/user_remote_data_source.dart' as _i621;
import '../service/auth/data/repositories/auth_repository_impl.dart' as _i34;
import '../service/auth/data/repositories/user_repository_impl.dart' as _i493;
import '../service/auth/domain/repositories/auth_repository.dart' as _i395;
import '../service/auth/domain/repositories/user_repository.dart' as _i841;
import '../service/auth/domain/use_cases/auth_usecases.dart' as _i48;
import '../service/auth/domain/use_cases/user_use_case.dart' as _i559;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i380.DioNetworkService>(() => _i380.DioNetworkService());
    gh.factory<_i616.HomeDataSource>(
        () => _i616.HomeDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i776.AuthDataSource>(
        () => _i776.AuthDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i303.PriceInfoDataSource>(
        () => _i303.PriceInfoDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i621.UserDataSource>(
        () => _i621.UserDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i161.EventDataSource>(
        () => _i161.EventDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i999.KeywordAnalyzerDataSource>(() =>
        _i999.KeywordAnalyzerDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i79.AutoPostingDataSource>(
        () => _i79.AutoPostingDataSourceImpl());
    gh.factory<_i775.PriceInfoRepository>(
        () => _i108.PriceInfoRepositoryImpl(gh<_i303.PriceInfoDataSource>()));
    gh.factory<_i103.NoticeDataSource>(
        () => _i103.NoticeDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i66.HomeRepository>(
        () => _i6.HomeRepositoryImpl(gh<_i616.HomeDataSource>()));
    gh.factory<_i89.SignUpDataSource>(
        () => _i89.SignUpDataSourceImpl(gh<_i380.DioNetworkService>()));
    gh.factory<_i85.KeywordAnalyzerRepository>(() =>
        _i644.KeywordAnalyzerRepositoryImpl(
            gh<_i999.KeywordAnalyzerDataSource>()));
    gh.factory<_i664.AutoPostingRepository>(() =>
        _i213.AutoPostingRepositoryImpl(gh<_i79.AutoPostingDataSource>()));
    gh.factory<_i395.AuthRepository>(
        () => _i34.AuthRepositoryImpl(gh<_i776.AuthDataSource>()));
    gh.factory<_i841.UserRepository>(
        () => _i493.UserRepositoryImpl(gh<_i621.UserDataSource>()));
    gh.factory<_i239.KeywordAnalyzerUseCase>(() =>
        _i239.KeywordAnalyzerUseCase(gh<_i85.KeywordAnalyzerRepository>()));
    gh.factory<_i65.PriceInfoUseCase>(
        () => _i65.PriceInfoUseCase(gh<_i775.PriceInfoRepository>()));
    gh.factory<_i634.HomeUseCase>(
        () => _i634.HomeUseCase(gh<_i66.HomeRepository>()));
    gh.factory<_i521.EventRepository>(
        () => _i217.EventRepositoryImpl(gh<_i161.EventDataSource>()));
    gh.factory<_i158.NoticeRepository>(
        () => _i495.NoticeRepositoryImpl(gh<_i103.NoticeDataSource>()));
    gh.factory<_i995.AutoPostingUseCase>(
        () => _i995.AutoPostingUseCase(gh<_i664.AutoPostingRepository>()));
    gh.factory<_i133.NoticeUseCase>(
        () => _i133.NoticeUseCase(gh<_i158.NoticeRepository>()));
    gh.factory<_i725.SignUpRepository>(
        () => _i388.SignUpRepositoryImpl(gh<_i89.SignUpDataSource>()));
    gh.factory<_i374.EventUseCase>(
        () => _i374.EventUseCase(gh<_i521.EventRepository>()));
    gh.factory<_i559.UserUseCase>(
        () => _i559.UserUseCase(gh<_i841.UserRepository>()));
    gh.factory<_i995.SignUpUseCase>(
        () => _i995.SignUpUseCase(gh<_i725.SignUpRepository>()));
    gh.factory<_i48.AuthUseCase>(() => _i48.AuthUseCase(
          gh<_i395.AuthRepository>(),
          gh<_i559.UserUseCase>(),
        ));
    return this;
  }
}
