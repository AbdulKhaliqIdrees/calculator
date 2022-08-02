import 'package:calculator/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  final buttoncontroller = Get.find<ButtonController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      alignment: Alignment.centerRight,
      height: 100,
      width: double.infinity,
      child: Obx(
        () => Text(
          buttoncontroller.result.value,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 33),
        ),
      ),
    );
  }
}
