import 'package:avenue_demo/features/post_times/data/datasources/post_time_remote_datasource.dart';
import 'package:avenue_demo/features/post_times/data/repositories/repositories.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/features/post_times/presentation/blocs/blocs.dart';
import 'package:avenue_demo/resources/resources.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<PostTimeRepository>(
      () => PostTimeRemoteRepository());
  locator.registerLazySingleton<HttpHelper>(() => FakeApiHelper());
  locator.registerLazySingleton<PostTimeRemoteDataSource>(
      () => PostTimeRemoteDataSource());
  locator.registerLazySingleton<PostTimeBloc>(
      () => PostTimeBloc());
}
