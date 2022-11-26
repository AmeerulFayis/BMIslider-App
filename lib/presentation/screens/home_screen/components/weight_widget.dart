import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class WeightWidget extends StatelessWidget {
  const WeightWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    HomeScreenController homeController = Get.find();

    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          // ignore: unnecessary_brace_in_string_interps
          Text(
            "Weight:${homeController.displayWeight}",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Slider(
            min: 130,
            max: 220,
            value: homeController.weight.toDouble(),
            onChanged: (value) {
              homeController.changeWeight(value);
            },
          )
        ],
      ),
    );
  }
}
