import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: 90,
          child: Text(
            ":(",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Container(
          child: Text("Can't get post times"),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
        )
      ],
    );
  }
}
