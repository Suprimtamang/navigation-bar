import 'package:flutter/material.dart';
import 'package:navbar/homepage.dart';

// import 'package:navbar/screen/navigationscreen.dart';
// import 'package:navbar/screen/stopwatch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
