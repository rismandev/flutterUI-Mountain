import 'package:flutter/material.dart';
import 'package:mountain_app/widgets/home/popularlist.widget.dart';
import 'package:mountain_app/widgets/home/provincelist.widget.dart';
import 'package:mountain_app/widgets/home/recentlist.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(size),
      body: Column(
        children: <Widget>[
          ProvinceList(),
          RecentList(),
          PopularList(),
        ],
      ),
    );
  }

  AppBar buildAppBar(Size size) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        highlightColor: Colors.green.withOpacity(0.2),
        icon: Icon(
          Icons.menu,
          color: Colors.black.withOpacity(0.6),
        ),
        onPressed: () {},
      ),
      title: Text(
        "Pendaki",
        style: TextStyle(
          fontSize: size.width * 0.06,
          color: Colors.black.withOpacity(0.7),
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          alignment: Alignment.center,
          highlightColor: Colors.green.withOpacity(0.2),
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
