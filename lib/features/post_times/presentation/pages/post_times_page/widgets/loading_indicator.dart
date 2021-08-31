import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        Container(
          child: Text("Getting post times"),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
        )
      ],
    );
  }
}
