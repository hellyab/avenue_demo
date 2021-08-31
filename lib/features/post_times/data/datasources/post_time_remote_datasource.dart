import 'package:avenue_demo/core/error/error.dart';
import 'package:avenue_demo/features/post_times/data/data.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/injection_container.dart';
import 'package:avenue_demo/resources/resources.dart';
import 'package:dartz/dartz.dart';

class PostTimeRemoteDataSource implements PostTimeRepository {
  @override
  Future<Either<RemoteFailure, List<PostTime>>> getPostTimes() async {
    HttpResponse? response;
    try {
      HttpHelper httpHelper = locator.get<HttpHelper>();
      response = await httpHelper.get(url: "url");
      if (response.isOk && response.data is List<Map>) {
        List<PostTime> postTimes = (response.data as List)
            .map((item) => PostTimeDto.fromMap(item))
            .toList();
        return Right(postTimes);
      } else {
        throw Exception("server returned with invalid status code");
      }
    } catch (e) {
      return Left(
        RemoteFailure(
          reason: e.toString(),
          statusCode: response?.statusCode ?? 0,
        ),
      );
    }
  }
}
