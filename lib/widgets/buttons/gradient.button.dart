import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final Function onPress;

  const GradientButton({
    Key key,
    this.text = 'Button',
    this.colors,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 45,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.greenAccent.withBlue(5),
          ],
          begin: Alignment.topLeft,
          end: Alignment(0, 5),
        ),
      ),
      child: FlatButton(
        highlightColor: Colors.orange.withOpacity(0.6),
        onPressed: this.onPress,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            this.text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}
