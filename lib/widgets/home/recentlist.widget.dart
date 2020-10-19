import 'package:flutter/material.dart';
import 'package:mountain_app/models/mountain.model.dart';
import 'package:mountain_app/screens/detail.screen.dart';
import 'package:mountain_app/widgets/home/recentcard.widget.dart';

import '../../models/mountain.model.dart';

class RecentList extends StatefulWidget {
  final List<Mountain> listRecent;

  const RecentList({
    Key key,
    @required this.listRecent,
  }) : super(key: key);

  @override
  _RecentListState createState() => _RecentListState();
}

class _RecentListState extends State<RecentList> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: AspectRatio(
        aspectRatio: 2,
        child: PageView.builder(
          controller: _pageController,
          itemCount: widget.listRecent.length,
          itemBuilder: (context, index) => buildRecentSlider(index),
        ),
      ),
    );
  }

  Widget buildRecentSlider(int index) {
    return RecentCard(
      recent: widget.listRecent[index],
      isSaved: widget.listRecent[index].isSaved,
      onSaved: () {
        widget.listRecent[index].isSaved = !widget.listRecent[index].isSaved;
        setState(() {});
      },
      onPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen(
                mountain: widget.listRecent[index],
              );
            },
          ),
        );
      },
    );
  }
}
