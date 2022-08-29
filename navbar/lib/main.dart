import 'package:flutter/material.dart';
import 'package:navbar/screen/custom_route_generator.dart';
// import 'package:navbar/screen/ig.dart';
import 'package:navbar/screen/navigationscreen.dart';

import 'package:navbar/screen/stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigatorScreen(),
      onGenerateRoute: ourRouteGenerator,
    );
  }
}
