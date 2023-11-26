import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Handle home button press
              print('Home Button Pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.insert_chart),
            onPressed: () {
              // Handle graph button press
              print('Graph Button Pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_balance_wallet),
            onPressed: () {
              // Handle wallet button press
              print('Wallet Button Pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Handle person button press
              print('Person Button Pressed');
            },
          ),
        ],
      ),
    );
  }
}
