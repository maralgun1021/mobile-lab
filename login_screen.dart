import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(children: [
        Stack(
          children: [
            ClipPath(
              clipper: TopFilledBottomRoundedClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF429690),
                      Color(0xFF2A7C76),
                    ],
                    stops: [0.0, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      'Тавтай морилно уу?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                        // fontFamily: 'Inter',
                        height: 1.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.4, // Adjust the width as needed
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        _buildInputField(emailController, "Enter your email address", false),
        const SizedBox(height: 20),
        _buildInputField(passwordController, "Enter your password", true),
        const SizedBox(height: 20),
        Container(
          width: 358.0, // Width of the gradient container
          height: 64.0, // Height of the gradient container
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3E7C78),
                Color(0xFF5AB8CD),
              ],
              stops: [0.0, 1.0],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius:
                BorderRadius.circular(40.0), // Same as the button's radius
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homepage_screen');
            },
            style: TextButton.styleFrom(
              primary: Colors.white, // foreground color
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0), // padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0), // radius
              ),
            ),
            child: Text(
              'Нэвтрэх',
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
                'Бүртгүүлэх',
                style: TextStyle(
                  color: Colors.black,
                  // Add more styles as needed
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 0.0, right: 60.0, top: 20.0, bottom: 0.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register_screen');
                },
                child: Text(
                  'Бүртгүүлэх',
                  style: TextStyle(
                    color: Color(0xFF32819A),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _buildInputField(
      TextEditingController controller, String hint, bool isPassword) {
    return Container(
      width: 300,
      height: 50,
      color: Colors.white,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(12.0), // Adjust the radius as needed
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }
}

class TopFilledBottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.8); // Adjust the height as needed
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * 0.8,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
