import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class ButtonController extends GetxController {
  var equation = "".obs;
  var result = "0".obs;
  var expression = "".obs;
  void buttonpressed(String buttontext) {
    if (buttontext == "AC") {
      equation.value = "";
      result.value = "0";
    } else if (buttontext == "⊠") {
      equation.value = equation.value.substring(0, equation.value.length - 1);
      if (equation.value == "") {
        equation.value = "";
      }
    } else if (buttontext == "=") {
      expression.value = equation.value;
      expression.value = expression.value.replaceAll('x', '*');
      expression.value = expression.value.replaceAll('÷', '/');
      try {
        Parser p = Parser();
        Expression exp = p.parse(expression.value);
        ContextModel cm = ContextModel();
        result.value = '${exp.evaluate(EvaluationType.REAL, cm)}';
        if (result.value.endsWith('.0')) {
          result.value = result.value.substring(0, result.value.length - 2);
        }
      } catch (e) {
        result.value = "Error";
      }
    } else {
      equation.value = equation.value + buttontext;
    }
  }
}
