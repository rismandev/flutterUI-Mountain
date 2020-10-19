import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkButton extends StatelessWidget {
  final Function onPress;
  final double top, right;
  final bool active;

  const BookmarkButton({
    Key key,
    @required this.onPress,
    @required this.active,
    this.top = 10,
    this.right = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 35,
      height: 35,
      top: this.top,
      right: this.right,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(50),
        ),
        alignment: Alignment.center,
        child: IconButton(
          splashColor: Colors.transparent,
          icon: SvgPicture.asset(
            "assets/icons/heart.svg",
            color: active ? Colors.red : Colors.black.withOpacity(0.6),
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
