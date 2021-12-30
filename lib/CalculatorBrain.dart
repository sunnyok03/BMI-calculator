import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final int weight;
  final int height;
  double _bmi;
  String calculateBMI() {
    print('height =$height and weight =$weight');
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCondition() {
    if (_bmi >= 25.0) return 'OVERWEIGHT';
    if (_bmi >= 18.5) return 'NORMAL';
    return 'UNDERWEIGHT';
  }

  String getComplement() {
    if (_bmi >= 25)
      return 'You have a higher BMI than a normal guy.Exercise more.';
    if (_bmi >= 18.5) return 'You have a normal BMI.Keep it up.';
    return 'You have less BMI than a normal guy.Eat more.';
  }
}
