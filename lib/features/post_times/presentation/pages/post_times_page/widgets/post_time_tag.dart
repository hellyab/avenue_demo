import 'package:avenue_demo/resources/resources.dart';
import 'package:flutter/material.dart';

class PostTimeTag extends StatelessWidget {
  const PostTimeTag({
    Key? key,
  }) : super(key: key);

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
            "Posted Sunday at 12:30PM",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: theBlue,
                ),
          ),
        ],
      ),
    );
  }
}
