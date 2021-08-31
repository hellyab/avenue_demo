import 'dart:math';

import 'package:avenue_demo/features/post_times/data/models/models.dart';

class MockPost {
  List<PostTimeDto> getMockPosts() {
    Random rand = Random();
    return List<PostTimeDto>.filled(
      10,
      PostTimeDto(
        averageEngagement: rand.nextDouble() * 100,
        commentsCount: rand.nextInt(999),
        dateTime: DateTime.now(),
        imageUrl: "some image url",
        likesCount: rand.nextInt(999),
      ),
    );
  }
}
