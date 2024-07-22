import 'package:flutter/material.dart';

class CalculatorProvider with ChangeNotifier {
  String _output = "0";

  String get output => _output;

  void updateOutput(String value) {
    _output = value;
    notifyListeners();
  }
}
