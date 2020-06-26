
import 'package:flutter/material.dart';
import 'package:holamundo/src/providers/menu_provider.dart';
import 'package:holamundo/src/styles/colors.dart';
import 'package:holamundo/src/styles/fonts.dart';

Widget seenList() {
  return FutureBuilder(
    future: animeService.loadData('seen'),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      return Container(
        height: 250,
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child:  Text('Animes vistos', style: fontH2(ColorsApp.white)),
            ),
           
            Expanded(
              child:  ListView(
                scrollDirection: Axis.horizontal,
                children: _seenListItems(snapshot.data, context),
              ),
            )
          ],
        ),
      );
    },
  );
}

List<Widget> _seenListItems(List<dynamic> list, BuildContext context) {
  final List<Widget> items=[];
  double margin ;
  int j = 0;
  list.forEach((element) {
    margin = j==0?30:5;
    j++;
    final tempWidget = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)),side: BorderSide(width: 2, style: BorderStyle.solid, color: ColorsApp.yellow)),
      margin: EdgeInsets.only(left: margin, right: 13),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'detail', arguments: element);
          },
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(element['img']), fit: BoxFit.cover),
              ),
              width: 110,
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                color: ColorsApp.black.withAlpha(200),
                padding: EdgeInsets.all(10),
                child: Text(element['title'],
                    style: fontCardLabel(ColorsApp.white)),
              ))
      ),

    );

    items.add(tempWidget);
  });
  return items;
}