import 'package:avenue_demo/features/post_times/data/data.dart';
import 'package:avenue_demo/features/post_times/presentation/presentation.dart';
import 'package:flutter/material.dart';

import 'package:avenue_demo/resources/resources.dart';

class PostTimeCard extends StatelessWidget {
  const PostTimeCard({
    Key? key,
    required this.postTime,
  }) : super(key: key);
  final PostTimeDto postTime;

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
                  value: "${postTime.likesCount}",
                ),
                PostInfoItem(
                  icon: Icons.chat_bubble_outline,
                  label: "Comments",
                  value: "${postTime.commentsCount}",
                ),
                PostInfoItem(
                  icon: Icons.flash_on_outlined,
                  label: "Average Engagement",
                  value: "${postTime.averageEngagement.toStringAsFixed(2)}",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
