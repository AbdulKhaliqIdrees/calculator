import 'package:calculator/views/buttons_screen.dart';
import 'package:calculator/views/equation_screen.dart';
import 'package:calculator/views/result_screen.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

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
