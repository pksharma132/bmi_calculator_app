import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String CalculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a high BMI, stop eating more than needed or you will weigh a ton soon lamao:-(";
    } else if (_bmi > 18.5) {
      return "Great you have a normal BMI, keep exercising :-)";
    } else {
      return "You are underweight ,start eating more your body needs it or you will be light as a feather soon lamao :-(";
    }
  }
}
