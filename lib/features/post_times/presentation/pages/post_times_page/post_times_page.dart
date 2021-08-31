import 'package:avenue_demo/features/post_times/data/data.dart';
import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/features/post_times/presentation/presentation.dart';
import 'package:avenue_demo/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostTimesPage extends StatefulWidget {
  const PostTimesPage({Key? key}) : super(key: key);

  @override
  _PostTimesPageState createState() => _PostTimesPageState();
}

class _PostTimesPageState extends State<PostTimesPage> {
  // late MockPost mockPost;
  late List<PostTimeDto> posts;

  @override
  void initState() {
    // mockPost = MockPost();
    // posts = mockPost.getMockPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
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
                  child: BlocBuilder<PostTimeBloc, PostTimeState>(
                      bloc: locator.get<PostTimeBloc>()..add(PostTimeEvent.Get),
                      builder: (context, postTimeState) {
                        if (postTimeState is Succeeded) {
                          List<PostTime> postTimes = postTimeState.postTimes;
                          return ListView.builder(
                            itemCount: postTimes.length,
                            itemBuilder: (context, index) {
                              return PostTimeCard(
                                postTime: postTimes[index],
                              );
                            },
                          );
                        } else if (postTimeState is Failed) {
                          return Center(
                            child: Column(
                              children: [
                                Transform.rotate(
                                  angle: 90,
                                  child: Text(
                                    ":(",
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                ),
                                Text("Can't get post times")
                              ],
                            ),
                          );
                        } else {
                          return Center(
                            child: Column(
                              children: [
                                CircularProgressIndicator(),
                                Text("Getting post times")
                              ],
                            ),
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
