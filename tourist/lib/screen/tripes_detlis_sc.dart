import 'package:flutter/material.dart';
import '../data/app_data.dart';

class DetlisScreen extends StatelessWidget {
  static const screenRout = '/tripes_detlis';
  final Function mangaerFavred;
  final Function chakFaverd;

  DetlisScreen(this.mangaerFavred ,this.chakFaverd);

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context).settings.arguments as String;
    final selectItem = Trips_data.firstWhere((trip) => trip.id == tripId);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${selectItem.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectItem.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildContainer("الانشطة"),
            buildListContainer(
              ListView.builder(
                itemCount: selectItem.activities.length,
                itemBuilder: (context, indext) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(selectItem.activities[indext]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildContainer('البرنامج اليومي'),
            buildListContainer(
              ListView.builder(
                itemCount: selectItem.program.length,
                itemBuilder: (context, indext) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('يوم${indext + 1}'),
                      ),
                      title: Text(selectItem.program[indext]),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(chakFaverd(tripId)?Icons.favorite:Icons.favorite_border),
          onPressed: () =>mangaerFavred(tripId)),
    );
  }

  Container buildContainer(String titile) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Text(
        titile,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget buildListContainer(Widget child) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 200,
      child: child,
    );
  }
}
