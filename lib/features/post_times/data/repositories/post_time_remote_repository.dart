import 'package:dartz/dartz.dart';

import 'package:avenue_demo/core/error/error.dart';
import 'package:avenue_demo/features/post_times/data/datasources/datasources.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/injection_container.dart';

class PostTimeRemoteRepository implements PostTimeRepository {
  @override
  Future<Either<RemoteFailure, List<PostTime>>> getPostTimes() async {
    PostTimeRemoteDataSource postTimeDataSource =
        locator.get<PostTimeRemoteDataSource>();
    return await postTimeDataSource.getPostTimes();
  }
}
