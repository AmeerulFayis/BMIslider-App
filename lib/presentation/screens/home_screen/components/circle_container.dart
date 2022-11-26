import 'package:bmiapp/presentation/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();

    return Container(
        height: 350,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(color: redColor, width: 10),
            shape: BoxShape.circle),
        child: Center(
            child: Text(
          homeController.result.toString(),
          style: TextStyle(fontSize: 50),
        )));
  }
}
