import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    callDelay(context);
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          child: const Text(
            "Сайн уу",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future callDelay(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushNamed(context, "/home_screen");
  }
}
