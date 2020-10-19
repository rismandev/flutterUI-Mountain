import 'package:flutter/material.dart';
import 'package:mountain_app/models/mountain.model.dart';
import 'package:mountain_app/widgets/home/popularlist.widget.dart';
import 'package:mountain_app/widgets/home/provincelist.widget.dart';
import 'package:mountain_app/widgets/home/recentlist.widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearch = false;
  String searchValue = '';

  void clickSearch() {
    setState(() {
      isSearch = !this.isSearch;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(size),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: <Widget>[
              ProvinceList(),
              RecentList(
                listRecent: recents,
              ),
              PopularList(
                listPopular: recents,
              ),
            ],
          ),
        ),
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
      title: Container(
        child: this.isSearch
            ? TextField(
                onChanged: (value) {
                  setState(() {
                    searchValue = value;
                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Apa yang kamu cari?",
                ),
              )
            : Text(
                "Pendaki",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          alignment: Alignment.center,
          highlightColor: Colors.green.withOpacity(0.2),
          onPressed: this.clickSearch,
          icon: Icon(
            this.isSearch ? Icons.close : Icons.search,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
