import 'package:flutter/material.dart';
import 'package:tourist/data/app_data.dart';
import '../widgets/catorgory_item.dart';

class Catogries extends StatelessWidget {
  const Catogries({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((e) => CatogriyItem(
          imageUrl: e.imageUrl,
              titile: e.title,
              id: e.id,
            )).toList(),
      );
  }

}
