import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'splash_screen.dart';
import 'register_screen.dart';
import 'login_screen.dart';
import 'homepage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income and Expenses',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageScreen(),
        '/home_screen': (context) => HomePageScreen(),
        '/register_screen': (context) => HomePageScreen(),
        '/login_screen': (context) => HomePageScreen(),
        '/homepage_screen': (context) => HomePageScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
