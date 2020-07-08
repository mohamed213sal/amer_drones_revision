import 'package:amerdrones/drones_home_page.dart';
import 'package:amerdrones/drones_pages/headline_news.dart';
import 'package:amerdrones/drones_pages/twitter_feed.dart';
import 'package:amerdrones/models/nav_menu.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  //so we have to make list of Strings to pass it the listTile ua amer
  List<String> DrawerTitles = [
    "Explore",
    "headLines News",
    "twitter Feeds",
    "Facebook Feeds",
  ];

  List<NavMenuItem> navigationMenuItems = [
    NavMenuItem("Explore", () => DronesHomePage()),
    NavMenuItem("HeadLines News", () => HeadLineNews()),
    NavMenuItem("Twitter Feed", () => TwitterFeed()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              navigationMenuItems[index].title,
              style: TextStyle(color: Colors.black45, fontSize: 20),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.deepOrange,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return navigationMenuItems[index].destination();
                }),
              );
            },
          );
        },
        itemCount: navigationMenuItems.length,
      ),
    ));
  }
}
