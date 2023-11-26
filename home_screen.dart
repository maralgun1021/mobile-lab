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
      body: Column(
        children: [
          Stack(
            children: [
              // Background Image (60% of the screen height)
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Center(
                  child: Image.asset(
                    'assets/images/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Main Content
            ],
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 54.0, right: 54.0, top: 0.0, bottom: 50.0),
                  child: Container(
                    width: 301.0, // Specify the width
                    height: 64.0, // Specify the height
                    child: Text(
                      'Ухаалаг Зарцуулж Илүү Хэмнэе',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        // fontFamily: 'Inter',
                        height: 1.0,
                        color: Color(0xFF438883),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 358.0, // Width of the gradient container
                  height: 64.0, // Height of the gradient container
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF69AEA9),
                        Color(0xFF3F8782),
                      ],
                      stops: [0.0, 1.0],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(
                        40.0), // Same as the button's radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.3), // Shadow color with opacity
                        spreadRadius: 5.0, // Spread radius
                        blurRadius: 10.0, // Blur radius
                        offset:
                            Offset(0, 25), // Offset to give the shadow a depth
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login_screen');
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white, // foreground color
                      padding: EdgeInsets.fromLTRB(
                          20.0, 10.0, 20.0, 10.0), // padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0), // radius
                      ),
                    ),
                    child: Text(
                      'Эхлэх',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 60.0, right: 40.0, top: 20.0, bottom: 0.0),
                      child: Text(
                        'Хэрэглэгчийн Эрх Бий Юу?',
                        style: TextStyle(
                          color: Colors.grey,
                          // Add more styles as needed
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0, right: 60.0, top: 20.0, bottom: 0.0),
                      child: Text(
                        'Нэвтрэх',
                        style: TextStyle(
                          color: Color(0xFF3E7C78),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
