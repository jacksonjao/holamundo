import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:holamundo/src/routes/routes.dart';
import 'package:holamundo/src/styles/colors.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(context) {
    FlutterStatusbarcolor.setStatusBarColor(ColorsApp.yellow);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}
