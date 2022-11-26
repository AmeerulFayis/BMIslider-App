import 'dart:math';
import 'package:flutter/cupertino.dart';

class HomeScreenController extends ChangeNotifier {
  HomeScreenController();
  double weight = 130;
  String displayWeight = "";

  double height = 30;
  String displayHeight = "";

  String result = "";
  String displayResult = "";

  changeWeight(value) {
    weight = value;
    displayWeight = weight.toStringAsFixed(2);

    calculateBmi();
  }

  changeHeight(value) {
    height = value;
    displayHeight = height.toStringAsFixed(2);

    calculateBmi();
  }

  calculateBmi() {
    // double heightSquare = height * height;
    result = (weight / pow(height / 100, 2)).toStringAsFixed(2);

    // result = result.parse(result).toStringAsFixed(2);

    notifyListeners();
  }
}
