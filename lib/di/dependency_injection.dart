import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:food_panda_clone/core/network/api_base_helper.dart';
import 'package:food_panda_clone/core/network/dio_factory.dart';
import 'package:food_panda_clone/core/network/network_info.dart';
import 'package:food_panda_clone/data/datasources/local_datasource/local_datasource.dart';
import 'package:food_panda_clone/data/datasources/local_datasource/local_datasource_impl.dart';
import 'package:food_panda_clone/data/datasources/remote_datasource/remote_datasource.dart';
import 'package:food_panda_clone/data/datasources/remote_datasource/remote_datasource_impl.dart';
import 'package:food_panda_clone/data/datasources/remote_datasource/rest_service.dart';
import 'package:food_panda_clone/data/repositories/repository.dart';
import 'package:food_panda_clone/data/repositories/repository_impl.dart';
import 'package:get_it/get_it.dart';

final locator  = GetIt.instance;

void setup() {

  locator.registerSingleton(DioFactory());
  locator.registerSingleton(ApiBaseHelper(dioFactory: locator()));
  locator.registerSingleton(RestService(helper: locator()));
  locator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(service: locator()));
  locator.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
  locator.registerFactory<NetworkInfo>(() => NetworkInfoImpl(DataConnectionChecker()));
  locator.registerLazySingleton<Repository>(() => RepositoryImpl(
      remoteDataSource: locator(),
      networkInfo: locator(),
      localDataSource: locator(),
    ),
  );
}