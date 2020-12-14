import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTripsCuppertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: Colors.white10,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueGrey.withAlpha(50)),
              activeIcon: Icon(Icons.home, color: Colors.indigo),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.blueGrey.withAlpha(50)),
              activeIcon: Icon(Icons.search, color: Colors.indigo),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blueGrey.withAlpha(50)),
              activeIcon: Icon(Icons.person, color: Colors.indigo),
              label: "",
            ),
          ]
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
	    )
   );
  }
}