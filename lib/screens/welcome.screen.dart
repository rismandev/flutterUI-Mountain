import 'package:flutter/material.dart';
import 'package:mountain_app/screens/home.screen.dart';
import 'package:mountain_app/widgets/buttons/gradient.button.dart';
import 'package:mountain_app/widgets/welcome/image.header.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImageHeader(
            imageSource: "assets/images/header.jpg",
          ),
          buildTextContent(size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GradientButton(
              text: "Mulai sekarang!",
              onPress: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ), (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buildTextContent(Size size) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Tips",
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w400,
              fontSize: size.width * 0.07,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Pendakian",
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.07,
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Awali segala sesuatu dengan berdoa sesuai agama dan kepercayaan masing-masing.\nPersiapkan perlengkapan dan juga mental yang kuat! Jangan menjadi sok jagoan, bersikap sopan terhadap alam supaya terhindar dari bahaya.",
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.w300,
              fontSize: size.width * 0.04,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Cintai alam maka alam mencintai kita!",
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04,
            ),
          ),
        ],
      ),
    );
  }
}
