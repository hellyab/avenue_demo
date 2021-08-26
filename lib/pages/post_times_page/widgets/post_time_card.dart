import 'package:flutter/material.dart';

import 'package:avenue_demo/models/models.dart';
import 'package:avenue_demo/pages/post_times_page/widgets/widgets.dart';
import 'package:avenue_demo/resources/resources.dart';

class PostTimeCard extends StatelessWidget {
  const PostTimeCard({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Image.network(
            cappuccinoImageUrl,
            fit: BoxFit.cover,
            height: 115,
            width: 115,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 7.5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostTimeTag(),
                PostInfoItem(
                  icon: Icons.favorite_outline,
                  label: "Likes",
                  value: "${post.likesCount}",
                ),
                PostInfoItem(
                  icon: Icons.chat_bubble_outline,
                  label: "Comments",
                  value: "${post.commentsCount}",
                ),
                PostInfoItem(
                  icon: Icons.flash_on_outlined,
                  label: "Average Engagement",
                  value: "${post.averageEngagement.toStringAsFixed(2)}",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
