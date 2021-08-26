import 'dart:math';

import 'package:avenue_demo/models/models.dart';

class MockPost {
  List<Post> getMockPosts() {
    Random rand = Random();
    return List<Post>.filled(
      10,
      Post(
        dateTime: DateTime.now(),
        likesCount: rand.nextInt(999),
        commentsCount: rand.nextInt(999),
        averageEngagement: rand.nextDouble() * 100,
      ),
    );
  }
}
