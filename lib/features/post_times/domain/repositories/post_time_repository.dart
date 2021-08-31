import 'package:dartz/dartz.dart';

import 'package:avenue_demo/core/core.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';

abstract class PostTimeRepository {
  Future<Either<Failure, List<PostTime>>> getPostTimes();
}
