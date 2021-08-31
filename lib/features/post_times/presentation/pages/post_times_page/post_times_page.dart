import 'package:avenue_demo/features/post_times/data/data.dart';
import 'package:avenue_demo/features/post_times/presentation/presentation.dart';
import 'package:avenue_demo/services/mock_post.dart';
import 'package:flutter/material.dart';

class PostTimesPage extends StatefulWidget {
  const PostTimesPage({Key? key}) : super(key: key);

  @override
  _PostTimesPageState createState() => _PostTimesPageState();
}

class _PostTimesPageState extends State<PostTimesPage> {
  late MockPost mockPost;
  late List<PostTimeDto> posts;

  @override
  void initState() {
    mockPost = MockPost();
    posts = mockPost.getMockPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Best Post Times",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return PostTimeCard(
                      postTime: posts[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}