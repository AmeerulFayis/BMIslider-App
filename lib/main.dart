import 'package:bmiapp/presentation/routes/route_constants.dart';
import 'package:bmiapp/presentation/routes/routes.dart';
import 'package:bmiapp/presentation/theme/theme.dart';
import 'package:bmiapp/utils/setup_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await setupApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' BMI App',
      initialRoute: RouteList.initial,
      routes: Routes.routes,
      theme: themeData(context),
    );
  }
}
