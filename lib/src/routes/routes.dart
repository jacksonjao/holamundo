import 'package:flutter/cupertino.dart';
import 'package:holamundo/src/pages/detail/detail.dart';
import 'package:holamundo/src/pages/home/home.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder> {
    '/' : (BuildContext context) => Home(),
    'detail' : (BuildContext context) => Detail()
  };
}
