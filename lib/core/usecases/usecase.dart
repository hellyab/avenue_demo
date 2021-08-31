import 'package:avenue_demo/core/core.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, P> {
  Future<Either<T, Failure>> call(P params);
}
