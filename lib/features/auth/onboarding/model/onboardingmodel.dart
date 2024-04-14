import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class onboardingModel {
  late String image, title, sibtitle;
  late Color color;

  onboardingModel({
    required this.image,
    required this.title,
    required this.sibtitle,
    Color color = Colors.black,
  });
}
