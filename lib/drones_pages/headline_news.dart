import 'package:flutter/material.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';
class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin {


  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HeadLine News",
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('go one');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print('go two');
            },
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.black, //this is the scrolling tab we have there
          //isScrollable: false,
          tabs: [
            Tab(
              child:Text("WHAT'S NEW"),
              //text: "What's New",
            ),
            Tab(
              child:Text('POPULAR'),
            ),
            Tab(
              child:Text('FAVOURITED'),
            )
          ],
          controller: _tabController,
        ),
      ),
      body: Center(
        child:TabBarView(children: <Widget>[
          Favourites(),
          Popular(),
          Favourites(),
        ],controller: _tabController,),
      ),
    );
  }
}
