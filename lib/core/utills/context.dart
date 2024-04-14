import 'package:flutter/material.dart';

extension context on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get hight => MediaQuery.of(this).size.width;
}
