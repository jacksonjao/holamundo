import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:holamundo/src/styles/colors.dart';
import 'package:holamundo/src/styles/fonts.dart';

class Detail extends StatelessWidget {
  dynamic data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
print(data['title'])

  ;
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: body(),
      ),
    );
  }

  Widget body() {

    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            color: ColorsApp.yellow,
              image: DecorationImage(image: NetworkImage(data['img']),fit: BoxFit.cover)
          ),
        ),
        Expanded(
          child: Container(
            color: ColorsApp.primary,

            padding: EdgeInsets.only(left: 25, top: 25, right: 25),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(2),
                  child: Text(data['title'], style: fontH2(ColorsApp.yellow),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(data['year'], style: fontCardLabel(ColorsApp.yellow),),
                ),


                Expanded(
                  child:  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(data['about'], style: fontText(ColorsApp.white),),
                  ),
                )
              ],
            ),

          ),
        ),


      ],
    );
  }




}