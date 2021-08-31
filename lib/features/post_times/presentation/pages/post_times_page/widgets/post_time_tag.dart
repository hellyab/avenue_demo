import 'package:flutter/material.dart';

import 'package:avenue_demo/resources/resources.dart';
import 'package:intl/intl.dart';

class PostTimeTag extends StatelessWidget {
  const PostTimeTag({
    Key? key,
    required this.postedTime,
  }) : super(key: key);
  final DateTime postedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theBlue.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(bottom: 2.0),
      padding: const EdgeInsets.all(7.5),
      child: Row(
        children: [
          Icon(
            Icons.watch_later_outlined,
            color: theBlue,
            size: 18,
          ),
          SizedBox(
            width: 7.5,
          ),
          Text(
            "Posted ${DateFormat('EEEEE', 'en_US').format(postedTime)} at ${DateFormat.jm().format(postedTime)}",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: theBlue,
                ),
          ),
        ],
      ),
    );
  }
}
