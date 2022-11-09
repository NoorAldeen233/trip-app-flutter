import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './data/app_data.dart';
import './screen/filteris.dart';
import './screen/tap_screen.dart';
import './screen/tripes_detlis_sc.dart';
import './screen/catogrie_tripes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'models/trips.dart';

void main() {
  runApp(ToutistApp());
}

class ToutistApp extends StatefulWidget {
  const ToutistApp({Key key}) : super(key: key);

  @override
  _ToutistAppState createState() => _ToutistAppState();
}

class _ToutistAppState extends State<ToutistApp> {
  
  Map<String, bool> _flitris = {
    'summer': false,
    'winter': false,
    'family': false,
  };
  List<Trip>_faverdTrip =[];
  List<Trip>_listofTrip=Trips_data;
  void _onPressed(Map<String, bool> fliterDate) {
    setState(() {
      _flitris = fliterDate;
      _listofTrip = Trips_data.where((trip) {
        if(_flitris['summer']==true && trip.isInSummer != true){
          return false;
        }
        if(_flitris['winter']==true && trip.isInWinter != true){
          return false;
        }
        if(_flitris['family']==true && trip.isForFamilies != true){
          return false;
        }
        return true;

      }).toList();
    });
  }
  void _mangaerFavred(String tripId){
  final exIndex =  _faverdTrip.indexWhere((trip) => trip.id == tripId);
  if(exIndex >=0){
    setState(() {
      _faverdTrip.removeAt(exIndex);
    });
  }else{
  }
  setState(() {
    _faverdTrip.add(Trips_data.firstWhere((trip) => trip.id == tripId));
    
  });
  }
  bool _chakFaverd(String id){
    return _faverdTrip.any((trip) => trip.id == id);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
            'ar', 'AE'), // English, no country code// Spanish, no country code
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue, accentColor: Colors.amber),
      // home:
      initialRoute: '/',
      routes: {
        '/': (context) => TabSceeen(_faverdTrip),
        CatogresTripes.screenRout: (context) => CatogresTripes(_listofTrip),
        DetlisScreen.screenRout: (context) => DetlisScreen(_mangaerFavred ,_chakFaverd) ,
        FiltersScreen.screenRoute: (context) => FiltersScreen(_flitris ,_onPressed)
      },
    );
  }
}
