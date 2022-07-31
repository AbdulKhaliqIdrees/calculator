import 'dart:ui';

import 'package:calculator/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquationScreen extends StatelessWidget {
  final buttoncontroller = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 250,
      width: double.infinity,
      child: Text(
        buttoncontroller.equation,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
