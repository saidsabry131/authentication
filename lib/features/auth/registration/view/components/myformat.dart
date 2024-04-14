import 'package:flutter/services.dart';

class myTextformat extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    int age = int.parse(newValue.text);
    return age > 40 ? oldValue : newValue;
  }
}
