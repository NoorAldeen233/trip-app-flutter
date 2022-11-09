import 'package:flutter/material.dart';
import '../screen/catogrie_tripes.dart';

class CatogriyItem extends StatelessWidget {
  final String id;
  final String titile;
  final String imageUrl;
  CatogriyItem({Key key, this.titile, this.imageUrl, this.id});
  selectCatogery(context) {
    Navigator.of(context).pushNamed(CatogresTripes.screenRout,
        arguments: {'id': id, 'title': titile});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCatogery(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              titile,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
          ),
        ],
      ),
    );
  }
}
