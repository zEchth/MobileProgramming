import 'package:flutter/material.dart';

extension IntExtensions on int {
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get h => SizedBox(height: toDouble());

  Widget get w => SizedBox(width: toDouble());
}
