import 'package:flutter/material.dart';
import '../models/trips.dart';
import '../widgets/drawer_screen.dart';
import '../screen/faverd_screen.dart';

import 'catogories_screen.dart';

class TabSceeen extends StatefulWidget {
TabSceeen(this.favredTrips);
  final List<Trip>favredTrips;

  @override
  State<TabSceeen> createState() => _TabSceeenState();
}

class _TabSceeenState extends State<TabSceeen> {
  int crenindext = 0;
  void onselect(int value) {
    setState(() {
      crenindext = value;
    });
  }

   List<Map<String, Object>> _screen ;
   @override
  void initState() {
    super.initState();
    _screen =[
    {
      'screen': Catogries(),
      'title': 'تصنيف الرحلات',
    },
    {'screen': FaverdScreen(widget.favredTrips), 'title': 'الرحلات المفضلة'}
  ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.notifications_active)],
        centerTitle: true,
        title: Text(
          _screen[crenindext]['title'],
        ),
      ),
      drawer: Drawerlist(),
      body: _screen[crenindext]['screen'],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: crenindext,
          backgroundColor: Theme.of(context).primaryColor,
          onTap: onselect,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), title: Text("التصنفات")),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), title: Text("المفضلة")),
          ]),
    );
  }
}
