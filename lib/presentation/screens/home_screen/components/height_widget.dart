import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          // ignore: unnecessary_brace_in_string_interps
          Text(
            "Height:${homeController.displayHeight}",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Slider(
            min: 30,
            max: 130,
            value: homeController.height.toDouble(),
            onChanged: (value) {
              homeController.changeHeight(value);
            },
          )
        ],
      ),
    );
  }
}
