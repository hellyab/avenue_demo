import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:avenue_demo/features/post_times/domain/domain.dart';
import 'package:avenue_demo/features/post_times/presentation/presentation.dart';

class PostTimeCard extends StatelessWidget {
  const PostTimeCard({
    Key? key,
    required this.postTime,
  }) : super(key: key);
  final PostTime postTime;

  @override
  Widget build(BuildContext context) {
    //Dirty hack
    initializeDateFormatting('en_US', null);
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          CachedNetworkImage(
            errorWidget: (_, __, ___) => Center(
              child: Transform.rotate(
                angle: 90,
                child: Text(
                  ":(",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
            fit: BoxFit.cover,
            height: 115,
            imageUrl: postTime.imageUrl,
            placeholder: (_, __) => Center(
              child: CircularProgressIndicator(),
            ),
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
                PostTimeTag(
                  postedTime: postTime.postedAt,
                ),
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
                  value: "${postTime.averageEngagementPercent}",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
