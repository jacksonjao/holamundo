
import 'package:flutter/material.dart';
import 'package:holamundo/src/pages/feed/widgets/horizontal_list.dart';
import 'package:holamundo/src/pages/feed/widgets/vertical_list.dart';
import 'package:holamundo/src/styles/colors.dart';

 class Feed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return body();
  }


  Widget body() {
    return Container(

        color: ColorsApp.primary,
        child: Column(

          children: [
            seenList(),
            desiredList()
          ],
        ),
      );
  }



}


