import 'package:calculator/controllers/button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidgets extends StatelessWidget {
  ButtonWidgets(this.buttontext, this.buttontextcolor, this.buttonfontsize,
      {Key? key})
      : super(key: key);
  final buttoncontroller = Get.put(ButtonController());
  final String buttontext;
  final Color buttontextcolor;
  final int buttonfontsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff272B34),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      height: 60,
      width: 60,
      child: MaterialButton(
        onPressed: () {
          buttoncontroller.buttonpressed(buttontext);
        },
        child: Text(
          buttontext,
          style: TextStyle(
            color: buttontextcolor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
