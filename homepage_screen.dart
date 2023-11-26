import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'instant.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int selectedIndex = 0; // Index of the selected icon

  @override
  Widget build(BuildContext context) {
    String username = "Н.Даваа";
    double total = 2548.00, revenue = 1840.00, expense = 284.00;
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
            ),
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
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        'Өглөөний мэнд?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w300,
                          // fontFamily: 'Inter',
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        username,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          // fontFamily: 'Inter',
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30),
                  child: NotificationBell(),
                )
              ],
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child:
                  Rectangle(total: total, revenue: revenue, expense: expense),
            )),
          ],
        ),
        Text("TEST"),
        Spacer(),
        Container(
          height: 70,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 25.0,
                color: Color(0x0000000F),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildIconButton(Icons.home_outlined, 0),
              buildIconButton(Icons.insert_chart_outlined, 1),
              buildIconButton(Icons.account_balance_wallet_outlined, 2),
              buildIconButton(Icons.person_outline, 3),
            ],
          ),
        )
      ]),
    );
  }

  IconButton buildIconButton(IconData icon, int index) {
    return IconButton(
      icon: Icon(icon),
      iconSize: 30.0,
      color: selectedIndex == index ? Colors.green : Colors.black,
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
        print('Button $index Pressed');
      },
    );
  }
}

class TopFilledBottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.7); // Adjust the height as needed
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height * 0.7,
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

class NotificationBell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                8.0), // Set border radius for a rounded rectangle
            color: Color(0xFF429690),
            // Set the background color to white
          ),
          child: IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors
                  .white, // Set the bell icon color to black or your desired color
            ),
            onPressed: () {
              // Handle notification icon click
            },
          ),
        ),
        Positioned(
          right: 12.0,
          top: 10.0,
          child: Container(
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  8.0), // Set border radius for a rounded rectangle
              color: Colors
                  .transparent, // Set the notification count background color to transparent
            ),
            child: Text(
              '2', // Replace this with the actual number of notifications
              style: TextStyle(
                color: Colors
                    .white, // Set the notification count text color to black or your desired color
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Rectangle extends StatelessWidget {
  final double total;
  final double revenue;
  final double expense;

  Rectangle(
      {required this.total, required this.revenue, required this.expense});
  @override
  Widget build(BuildContext context) {
    final currencyFormat =
        NumberFormat.currency(symbol: '\$', decimalDigits: 2);
    return Container(
      width: 324, // Set the width of the rectangle
      height: 151.99, // Set the height of the rectangle
      decoration: BoxDecoration(
        color: Color(0xFF429690),
        borderRadius: BorderRadius.circular(
            15.0), // Set the border radius for rounded edges
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'Нийт үлдэгдэл',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w300,
                // fontFamily: 'Inter',
                height: 1.5,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              currencyFormat.format(total),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                // fontFamily: 'Inter',
                height: 1.5,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: Row(
              children: [
                Icon(Icons.arrow_downward,
                    color: Colors.white), // Downward arrow
                Text(
                  ' Орлого',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_upward, color: Colors.white), // Upward arrow

                Text(
                  ' Зарлага',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 30, bottom: 30),
            child: Row(
              children: [
                Text(
                  currencyFormat.format(revenue),
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  currencyFormat.format(expense),
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () {
//               print('Home Button Pressed');
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.insert_chart),
//             onPressed: () {
//               print('Graph Button Pressed');
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.account_balance_wallet),
//             onPressed: () {
//               print('Wallet Button Pressed');
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.person),
//             onPressed: () {
//               print('Person Button Pressed');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
