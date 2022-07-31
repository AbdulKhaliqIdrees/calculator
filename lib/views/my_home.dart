import 'package:calculator/controllers/button_controller.dart';
import 'package:calculator/views/buttons_screen.dart';
import 'package:calculator/views/equation_screen.dart';
import 'package:calculator/views/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  final buttoncontroller = Get.put(ButtonController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff22252E),
        body: Column(
          children: [
            EquationScreen(),
            ResultScreen(),
            ButtonsScreen(),
          ],
        ),
      ),
    );
  }
}
