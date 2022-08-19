// import 'package:flutter/material.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:navbar/main.dart';
// import 'package:navbar/screen/form_screen.dart';
// import 'package:navbar/screen/ig.dart';

// class Homepage extends StatefulWidget {
//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   int _currentindex = 0;

//   //icons list
//   final iconList = <IconData>[
//     Icons.home,
//     Icons.person,
//     Icons.message,
//     Icons.bookmark,
//   ];

//   //screenlist
//   final pageList = [
//     FormScreen(),
//     UserSection(),
//     MyApp(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () {}),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//           //backgroundColor: Colors.black,
//           icons: iconList,
//           activeIndex: _currentindex,
//           gapLocation: GapLocation.center,
//           notchSmoothness: NotchSmoothness.verySmoothEdge,
//           leftCornerRadius: 32,
//           rightCornerRadius: 32,
//           onTap: (index) {
//             _currentindex = index;
//             setState(() {});
//           }),
//       body: pageList[_currentindex],
//     );
//   }
// }
