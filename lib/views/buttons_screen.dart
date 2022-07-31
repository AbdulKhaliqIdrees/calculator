import 'package:calculator/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff292D36),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      height: 427,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidgets("AC", Color(0xff138270), 20),
              ButtonWidgets("+/-", Color(0xff138270), 25),
              ButtonWidgets("%", Color(0xff138270), 25),
              ButtonWidgets("÷", Colors.red, 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidgets("7", Colors.white, 20),
              ButtonWidgets("8", Colors.white, 20),
              ButtonWidgets("9", Colors.white, 20),
              ButtonWidgets("x", Colors.red, 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidgets("4", Colors.white, 20),
              ButtonWidgets("5", Colors.white, 20),
              ButtonWidgets("6", Colors.white, 20),
              ButtonWidgets("-", Colors.red, 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidgets("1", Colors.white, 20),
              ButtonWidgets("2", Colors.white, 20),
              ButtonWidgets("3", Colors.white, 20),
              ButtonWidgets("+", Colors.red, 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonWidgets("⊠", Colors.white, 20),
              ButtonWidgets("0", Colors.white, 20),
              ButtonWidgets(".", Colors.white, 30),
              ButtonWidgets("=", Colors.red, 30),
            ],
          ),
        ],
      ),
    );
  }
}
