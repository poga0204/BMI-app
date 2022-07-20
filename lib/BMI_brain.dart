import 'dart:math';

import 'package:flutter/material.dart';

double value;

class Brain {
  Brain(this.height, this.weight);
  final int height;
  final int weight;
  String cal() {
    value = weight / pow(height / 100, 2);
    return value.toStringAsFixed(1);
  }

  String result() {
    if (value >= 25) {
      return 'Overweight';
    } else if (value > 18.5) {
      return 'Normal';
    } else
      return 'Underweight';
  }

  String interpretation() {
    if (value >= 25) {
      return 'You have a higher body weight.Try to exercise more';
    } else if (value > 18.5) {
      return 'You have a normal body weight.Good job:)';
    } else
      return 'You have a lower than normal body weight.You can eat a bit more';
  }
}
