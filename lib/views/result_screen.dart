import 'package:calculator/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  final buttoncontroller = Get.put(ButtonController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 100,
      width: double.infinity,
      child: Text(
        buttoncontroller.result,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
      ),
    );
  }
}
