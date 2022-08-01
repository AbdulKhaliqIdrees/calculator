import 'package:calculator/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquationScreen extends StatelessWidget {
  final buttoncontroller = Get.find<ButtonController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomRight,
      height: 250,
      width: double.infinity,
      child: Obx(
        () => Text(
          buttoncontroller.equation.value,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
