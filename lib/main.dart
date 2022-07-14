import 'package:flutter/material.dart';

import 'package:login_ui/task3/screen1.dart';
import 'package:login_ui/task3/screen2.dart';
import 'package:login_ui/task3/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Screen1(),
    );
  }
}
