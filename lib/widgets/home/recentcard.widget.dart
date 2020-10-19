import 'package:flutter/material.dart';
import 'package:mountain_app/models/mountain.model.dart';
import 'package:mountain_app/widgets/buttons/bookmark.button.dart';

class RecentCard extends StatelessWidget {
  final Mountain recent;
  final Function onPress;
  final Function onSaved;
  final bool isSaved;

  const RecentCard({
    Key key,
    @required this.recent,
    @required this.onPress,
    this.onSaved,
    this.isSaved = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(-2, 0),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BackgroundImage(image: recent.image),
            BookmarkButton(
              active: this.isSaved,
              onPress: this.onSaved,
            ),
            TextRecent(
              size: size,
              title: recent.title,
              location: recent.location,
            ),
          ],
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  final String image;
  const BackgroundImage({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        this.image,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TextRecent extends StatelessWidget {
  final String title, location;
  final Size size;

  const TextRecent({
    Key key,
    @required this.title,
    @required this.location,
    @required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      left: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            this.location,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.035,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
