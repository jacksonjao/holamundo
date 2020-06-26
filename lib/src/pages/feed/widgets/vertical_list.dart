import 'package:flutter/material.dart';
import 'package:holamundo/src/providers/menu_provider.dart';
import 'package:holamundo/src/styles/colors.dart';
import 'package:holamundo/src/styles/fonts.dart';

Widget desiredList() {
  return FutureBuilder(
      future: animeService.loadData('desired'),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return Expanded(
       child: Container(
         width: double.infinity,
         margin: EdgeInsets.only(top: 30),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight:  Radius.circular(40)),
           color: ColorsApp.white,
         ),
         child: Column(
           children: <Widget>[
             Container(
               alignment: Alignment.centerLeft,
               margin: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 15),
               child: Text('Animes deseados', style: fontH2(ColorsApp.primary))
               ,
             ),
             Expanded(
               child: ListView(children: _desiredListItems(snapshot.data, context)),
             )

           ],
         ),
       ),
        );
      });
}

List<Widget> _desiredListItems(List<dynamic> data, BuildContext context) {
  final List<Widget> items = [];
  double margin ;
  int j = 0;
  margin = j==0?0:30;
  j++;
  data.forEach((element) {
    final Widget tempWidget = ListTile(
      contentPadding: EdgeInsets.only(left: 30, top: margin, bottom: 14, right: 30),
      title: Text(element['title'], style: poppinsFont(ColorsApp.primary)),
      trailing: Icon(Icons.navigate_next, color: ColorsApp.yellow),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: ColorsApp.yellow),
          borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
        image: NetworkImage(element['img']), fit: BoxFit.cover),
        ),
      ),
      subtitle: Text(element['year'], style: poppinsFont(ColorsApp.primary.withAlpha(150))),
      onTap: () => {
      Navigator.pushNamed(context, 'detail', arguments: element)
      },
    );
   // print(element);
    items.add(tempWidget);
  });
 return items;
}

