import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: Image.asset(
                'assets/images/home.png',
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('Ухаалаг Зарцуулж Илүү Хэмнэе',
                  style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF438883))),
            ),
            Expanded(
                flex: 1,
                child: TextButton(
                  child: const Text('Эхлэх'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor: Color(0xFF438883),
                      elevation: 5,
                      minimumSize: Size(300, 20),
                      maximumSize: Size(300, 20)),
                  onPressed: () {},
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                          16.0), // Adjust the padding as needed
                      child: Text(
                        'Хэрэглэгчийн Эрх Бий Юу?',
                        style: TextStyle(
                          color: Colors.grey,
                          // Add more styles as needed
                        ),
                      ),
                    ),
                    Spacer(),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          // Click method for the second text
                          print('Second Text Clicked');
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Нэвтрэх',
                            style: TextStyle(
                              color: Color(0xFF438883),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
