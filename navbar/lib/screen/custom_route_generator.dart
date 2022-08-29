import 'package:flutter/material.dart';
import 'package:navbar/screen/form_screen.dart';
import 'package:navbar/screen/routes.dart';
import 'package:navbar/screen/stopwatch.dart';
import 'package:navbar/tiktok_ui.dart';

import 'ig.dart';

MaterialPageRoute ourRouteGenerator(RouteSettings settings) {
  switch (settings.name) {
    case Routes.LoginPage:
      return MaterialPageRoute(builder: (_) => FormScreen());
    case Routes.Tiktok:
      return MaterialPageRoute(builder: (_) => TiktokPage());
    case Routes.Instagram:
      return MaterialPageRoute(builder: (_) => Homepage());
    case Routes.Stopwatch:
      return MaterialPageRoute(builder: (_) => StopWatch());

    default:
      return MaterialPageRoute(builder: (_) => FormScreen());
  }
}
