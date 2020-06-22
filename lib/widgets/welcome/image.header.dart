import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  final String imageSource;

  const ImageHeader({
    Key key,
    @required this.imageSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height / 2,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Image.asset(
        this.imageSource,
        fit: BoxFit.cover,
      ),
    );
  }
}
