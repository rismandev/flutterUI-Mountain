import 'package:flutter/material.dart';
import 'package:mountain_app/screens/home.screen.dart';
import 'package:mountain_app/widgets/buttons/gradient.button.dart';
import 'package:mountain_app/widgets/welcome/content.widget.dart';
import 'package:mountain_app/widgets/welcome/image.header.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ImageHeader(
              imageSource: "assets/images/header.jpg",
            ),
            ContentWelcome(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
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
      ),
    );
  }
}
