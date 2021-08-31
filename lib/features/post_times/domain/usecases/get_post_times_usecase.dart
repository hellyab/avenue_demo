import 'package:avenue_demo/core/core.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:dartz/dartz.dart';

//TODO: change this
class GetPostTimesUseCase extends UseCase<PostTime, String> {
  @override
  Future<Either<PostTime, Failure>> call(String params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
