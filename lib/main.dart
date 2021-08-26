import 'package:avenue_demo/pages/post_times_page/post_times_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avenue Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PostTimesPage(),
    );
  }
}
