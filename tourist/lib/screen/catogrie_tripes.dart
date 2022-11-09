import 'package:flutter/material.dart';
import 'package:tourist/models/trips.dart';
import 'package:tourist/screen/trip_item.dart';


class CatogresTripes extends StatefulWidget {
  static const screenRout = '/cato-trp';
  final List<Trip>listTrips;
  CatogresTripes(this.listTrips);

  @override
  _CatogresTripesState createState() => _CatogresTripesState();
}

class _CatogresTripesState extends State<CatogresTripes> {
  
  String catogresTitle;
  List<Trip> display;
  void _removeTrips(String tripId) {
    setState(() {
      display.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  void initState() {
    //..
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routArgom =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catogresid = routArgom['id'];
    catogresTitle = routArgom['title'];
    display = widget.listTrips.where((trip) {
      return trip.categories.contains(catogresid);
    }).toList();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(catogresTitle),
      ),
      body: ListView.builder(
          itemCount: display.length,
          itemBuilder: (context, indext) {
            return TripItem(
              // removeItem: _removeTrips,
              id: display[indext].id,
              title: display[indext].title,
              imageUrl: display[indext].imageUrl,
              duration: display[indext].duration,
              tripType: display[indext].tripType,
              season: display[indext].season,
            );
          },
          ),
    );
  }
}
