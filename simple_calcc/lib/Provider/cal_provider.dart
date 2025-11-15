import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final controller = TextEditingController();

  setvalue(String value) {
    String str = controller.text;
    switch (value) {
      case "C":
        controller.clear();
        break;
      case "AC":
        controller.text = str.substring(0, str.length - 1);
        break;
      case "X":
        controller.text += "*";
        break;
      case "=":
        comput();
        break;
      default:
        controller.text += value;
    }
  }

  comput() {
    String text = controller.text;
    if (text.isEmpty) {
      log('Empty');
    } else if (text.isNotEmpty) {
      controller.text = text.interpret().toString();
      log(controller.text);
    }

    // interpret can convert the string into mathmatical expression
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
