import 'package:flutter/material.dart';
import '../screen/filteris.dart';

class Drawerlist extends StatelessWidget {
  const Drawerlist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: 100,
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'دليل سياحي',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          bulidListTile(
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            Icons.card_travel,
            'الرحلات',
          ),
          bulidListTile(() {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.screenRoute);
          }, Icons.filter_list, 'التصفية'),
        ],
      ),
    );
  }

  Widget bulidListTile(
    Function function,
    IconData iconData,
    String text,
  ) {
    return ListTile(
      onTap: function,
      leading: Icon(
        iconData,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
