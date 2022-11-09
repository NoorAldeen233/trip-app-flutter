import 'package:flutter/material.dart';
import 'package:tourist/models/trips.dart';
import 'package:tourist/screen/trip_item.dart';

class FaverdScreen extends StatelessWidget {
  final List<Trip>favredTrips;

  FaverdScreen(this.favredTrips);

  @override
  Widget build(BuildContext context) {
    if(favredTrips.isEmpty){
       return Center(child: Text('ليس لديك اي رحلة في قائمة المفضلة'));
    }else{
      return ListView.builder(
          itemCount: favredTrips.length,
          itemBuilder: (context, indext) {
            return TripItem(
              // removeItem: ,
              id: favredTrips[indext].id,
              title: favredTrips[indext].title,
              imageUrl: favredTrips[indext].imageUrl,
              duration:favredTrips [indext].duration,
              tripType: favredTrips[indext].tripType,
              season: favredTrips[indext].season,
            );
          },
          );
    }
   
  }
}