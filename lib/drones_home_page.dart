import 'package:amerdrones/drones_pages/home_tabs/favourites.dart';
import 'package:amerdrones/drones_pages/home_tabs/popular.dart';
import 'package:amerdrones/drones_pages/home_tabs/whats_new.dart';
import 'package:amerdrones/shared_ui/navigation_drawer.dart';
import 'package:flutter/material.dart';

class DronesHomePage extends StatefulWidget {
  @override
  _DronesHomePageState createState() => _DronesHomePageState();
}

class _DronesHomePageState extends State<DronesHomePage>
    with TickerProviderStateMixin {
//some properties
  TabController _tabController;

  initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.white),),
        centerTitle: false,
        //note that all the tabs will be in the home_tabs folder ya amer
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Text("Favourites"),
            Text("WHAT'S NEW"),
            Text("POPULAR"),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          WhatsNew(),
          Favourites(),
          Popular(),
        ],
      ),
    );
  }
}
