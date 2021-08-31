import 'package:flutter/material.dart';

class PostInfoItem extends StatelessWidget {
  const PostInfoItem({
    Key? key,
    required this.icon,
    this.isPercent = false,
    required this.label,
    required this.value,
  }) : super(key: key);

  final IconData icon;
  final bool isPercent;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xffc4c4c4),
            size: 18,
          ),
          SizedBox(
            width: 7.5,
          ),
          Text(
            "$value $label",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
