import 'package:flutter/material.dart';
import 'package:mountain_app/models/mountain.model.dart';
import 'package:mountain_app/screens/detail.screen.dart';
import 'package:mountain_app/widgets/home/popularcard.widget.dart';

class PopularList extends StatefulWidget {
  @override
  _PopularListState createState() => _PopularListState();
}

class _PopularListState extends State<PopularList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
            child: Text(
              "Tempat populer",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: size.width * 0.045,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: recents.length,
              itemBuilder: (context, index) => buildPopularCard(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPopularCard(int index) {
    return PopularCard(
      recent: recents[index],
      onPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen();
            },
          ),
        );
      },
    );
  }
}
