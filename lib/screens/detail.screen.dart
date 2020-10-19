import 'package:flutter/material.dart';
import 'package:mountain_app/widgets/buttons/gradient.button.dart';
import 'package:mountain_app/widgets/detail/header.widget.dart';

import '../models/mountain.model.dart';

class DetailScreen extends StatefulWidget {
  final Mountain mountain;

  const DetailScreen({
    Key key,
    @required this.mountain,
  }) : super(key: key);

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
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderDetail(
                image: widget.mountain.image ?? "assets/images/detail.png",
                onBackPress: () {
                  Navigator.pop(context);
                },
                onLikePress: () {
                  widget.mountain.isSaved = !widget.mountain.isSaved;
                  setState(() {});
                },
                isLike: widget.mountain.isSaved,
              ),
              ContentDetail(
                title: widget.mountain.title ?? "Gunung Ciremai",
                location: widget.mountain.location ?? "Jawa Barat, Indonesia",
                description: widget.mountain.description ?? "",
                price: widget.mountain.price ?? 75,
                onPress: () {
                  showDialog(
                    context: context,
                    child: AlertDialog(
                      content: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Berhasil memesan tiket pendakian ke ${widget.mountain.title}",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: GradientButton(
                                text: "Konfirmasi",
                                onPress: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContentDetail extends StatelessWidget {
  final String title, location, description;
  final double price;
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
    return Container(
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
                "${this.price.toInt()}K",
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
          Container(
            margin: EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: GradientButton(
              text: "Pesan sekarang!",
              onPress: this.onPress,
            ),
          ),
        ],
      ),
    );
  }
}
