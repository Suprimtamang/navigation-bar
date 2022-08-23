import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:navbar/homepage.dart';

import '../tiktok_ui.dart';
import 'form_screen.dart';
import 'ig.dart';

import 'package:navbar/screen/stopwatch.dart';

class NavigatorScreen extends StatelessWidget {
  NavigatorScreen({Key? key}) : super(key: key);

  final List screensList = [
    {"name": 'LoginPage ', "widget": FormScreen()},
    {"name": 'Tiktok ', "widget": MyHomePage()},
    {"name": 'Instagram ', "widget": UserSection()},
    {"name": 'Stopwatch ', "widget": StopWatch()},
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("back button disabled");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Navigation")),
        body: ListView.builder(
          itemCount: screensList.length,
          itemBuilder: (context, index) {
            final screen = screensList[index];
            return MaterialButton(
              onPressed: () {
                final route =
                    MaterialPageRoute(builder: (context) => screen["widget"]);
                Navigator.push(context, route);
                // Navigator.pop(context);
              },
              color: Color.fromRGBO(Random().nextInt(255),
                  Random().nextInt(255), Random().nextInt(255), 0.8),
              child: Text(
                screen['name'],
                // style: TextStyle(color: Colors.amber),
              ),
            );
          },
        ),
      ),
    );
  }
}
