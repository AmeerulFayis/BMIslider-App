import 'package:bmiapp/presentation/routes/route_constants.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes => {
        RouteList.initial: (context) => HomeScreen(),
      };
}
