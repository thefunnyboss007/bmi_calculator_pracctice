import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getRInterpetation() {
    if (_bmi >= 25) {
      return 'You have a highere than normal body weight. Try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'You have a ormal body weight. Good Job';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
