import 'package:flutter/material.dart';
import '../widgets/drawer_screen.dart';

class FiltersScreen extends StatefulWidget {
  final Function savefliter;
  final Map<String, bool> carntfliter;

  FiltersScreen(this.carntfliter, this.savefliter);

  static const screenRoute = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _scaffoldKay = GlobalKey<ScaffoldState>();
  SnackBar snackBar = SnackBar(content: Text("تم تشغيل التصنيفات"));

  bool _sommer = false;
  bool _winter = false;
  bool _famile = false;


  bool shangSnak = true;

  @override
  void initState() {
    super.initState();
    _sommer = widget.carntfliter['summer'];
    _winter = widget.carntfliter['winter'];
    _famile = widget.carntfliter['family'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      key: _scaffoldKay,
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon (
                Icons.save),
              onPressed: () {
                final selestItem = {
                  'summer': _sommer,
                  'winter': _winter,
                  'family': _famile,
                };
                widget.savefliter(selestItem);
                _scaffoldKay.currentState.showSnackBar(snackBar);
              })
        ],
        centerTitle: true,
        title: Text('صفحة التصنيفات'),
      ),
      drawer: Drawerlist(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView(
            children: [
              buildSwitchListTilee(
                  'رحلات صيفية', "اظهار رحلات فصل الصيف فقط", _sommer,
                  (newvalue) {
                setState(() {
                  _sommer = newvalue;
                });
              }),
              buildSwitchListTilee(
                  'رحلات الشتاء', "اظهار رحلات فصل الشتاء فقط", _winter,
                  (newvalue) {
                setState(() {
                  _winter = newvalue;
                });
              }),
              buildSwitchListTilee(
                  'رحلات عائلية', "اظهار رحلات فصل عائلية فقط", _famile,
                  (newvalue) {
                setState(() {
                  _famile = newvalue;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }

  Widget buildSwitchListTilee(
    String title,
    String supTitle,
    var carntvalue,
    Function function,
  ) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(supTitle),
        value: carntvalue,
        onChanged: function);
  }
}
