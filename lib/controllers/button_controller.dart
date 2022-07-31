import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class ButtonController extends GetxController {
  String equation = "0";
  String result = "0";
  String expression = "";
  void buttonpressed(String buttontext) {
    if (buttontext == "AC") {
      equation = "0";
      result = "0";
    } else if (buttontext == "⊠") {
      equation = equation.substring(0, equation.length - 1);
      if (equation == "") {
        equation = "0";
      }
    } else if (buttontext == "=") {
      expression = equation;
      expression = expression.replaceAll('x', '*');
      expression = expression.replaceAll('÷', '/');
      try {
        Parser p = Parser();
        Expression exp = p.parse(expression);
        ContextModel cm = ContextModel();
        result = '${exp.evaluate(EvaluationType.REAL, cm)}';
      } catch (e) {
        result = "Error";
      }
    } else {
      equation = equation + buttontext;
    }
  }
}
