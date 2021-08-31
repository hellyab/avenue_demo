import 'package:avenue_demo/core/core.dart';

class RemoteFailure extends Failure {
  RemoteFailure({
    required String reason,
    required this.statusCode,
  }) : super(reason: reason);

  final int statusCode;
}
