// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bmiapp/presentation/screens/home_screen/components/height_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/circle_container.dart';
import 'components/weight_widget.dart';
import 'home_screen_controller.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: override_on_non_overriding_member

  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    return AnimatedBuilder(
      animation: homeController,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("BMI"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [WeightWidget(), HeightWidget(), CircleContainer()],
            ),
          ),
        );
      },
    );
  }
}
