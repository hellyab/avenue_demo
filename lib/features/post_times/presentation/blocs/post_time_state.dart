import 'package:avenue_demo/features/post_times/domain/domain.dart';

abstract class PostTimeState {}

class Initial extends PostTimeState {}

class Succeeded extends PostTimeState {
  List<PostTime> postTimes;
  Succeeded({
    required this.postTimes,
  });
}

class Failed extends PostTimeState {
  String message;
  Failed({
    required this.message,
  });
}

class InProgress extends PostTimeState {}
