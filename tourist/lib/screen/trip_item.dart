import 'package:flutter/material.dart';
import '../screen/tripes_detlis_sc.dart';
import '../models/trips.dart';

class TripItem extends StatelessWidget {
  const TripItem(
      {Key key,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.tripType,
      @required this.season,
      // @required this.removeItem,
      @required this.id})
      : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripsType tripType;
  final Season season;
  // final Function removeItem;


  String get seasonText {
    if (season == Season.Winter) {
      return 'شتاء';
    }
    if (season == Season.Spring) {
      return 'ربيع';
    }
    if (season == Season.Summer) {
      return 'صيف';
    }
    if (season == Season.Autumn) {
      return 'خريف';
    } else {
      return 'غيرمعروف';
    }
  }

  String get tripTypeText {
    if (tripType == TripsType.Exploration) {
      return 'استكشاف';
    }
    if (tripType == TripsType.Recovery) {
      return 'نقامة';
    }
    if (tripType == TripsType.Activates) {
      return 'انشطة';
    }
    if (tripType == TripsType.Therapy) {
      return 'معالجة';
    } else {
      return 'غيرمعروف';
    }
  }

  void selectTrip(context) {
    Navigator.of(context)
        .pushNamed(
      DetlisScreen.screenRout,
      arguments: id,
    )
        .then((result) {
          if(result != null){
            // removeItem(result);
          }
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7.0,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: [0.6, 1],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 250,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    title,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration ايام')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(tripTypeText)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
