import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mountain_app/models/mountain.model.dart';
import 'package:mountain_app/widgets/buttons/gradient.button.dart';
import 'package:mountain_app/widgets/detail/header.widget.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          HeaderDetail(
            image: "assets/images/detail.png",
            onBackPress: () {
              Navigator.pop(context);
            },
            onLikePress: () {
              setState(() {
                isLike = !this.isLike;
              });
            },
            isLike: this.isLike,
          ),
          ContentDetail(
            title: "Gunung Ciremai",
            location: "Jawa Barat, Indonesia",
            description: descriptionText,
            price: 75,
            onPress: () {
              print("Sukses Pesan");
            },
          )
        ],
      ),
    );
  }
}

class ContentDetail extends StatelessWidget {
  final String title, location, description;
  final int price;
  final Function onPress;

  const ContentDetail({
    Key key,
    @required this.title,
    @required this.location,
    @required this.description,
    @required this.price,
    @required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.06,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 13,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Text(
                    this.location,
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Deskripsi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.05,
              ),
            ),
            SizedBox(height: 5),
            Text(
              this.description,
              style: TextStyle(
                fontSize: size.width * 0.04,
                color: Colors.black.withOpacity(0.6),
                height: 1.3,
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: <Widget>[
                Text(
                  "IDR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.05,
                    color: Colors.green[700].withOpacity(0.8),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "${this.price}K",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.05,
                    color: Colors.green[700].withOpacity(0.8),
                  ),
                ),
                Text(
                  "/paket",
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: GradientButton(
                text: "Pesan sekarang!",
                onPress: this.onPress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
