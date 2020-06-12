import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle textStyle = new TextStyle(fontSize: 14);
  final Image image = Image(
    image: NetworkImage(
        'https://i.pinimg.com/564x/60/5b/77/605b7787d61833b653e4eddad6a9faff.jpg'),
    fit: BoxFit.contain,
  );

  final Container container = Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
          alignment: Alignment(-.2, 0),
          image: NetworkImage(
              'https://i.pinimg.com/564x/60/5b/77/605b7787d61833b653e4eddad6a9faff.jpg'),
          fit: BoxFit.cover),
    ),
    alignment: Alignment.center,
    child: Text(
      "Bienvenido \n Esta aplicación no hace nada",
      style: TextStyle(
          fontSize: 24, color: Colors.purple, backgroundColor: Colors.yellow),
      textAlign: TextAlign.center,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My primera aplicación en Flutter'),
        centerTitle: true,
      ),
      body: Center(child: container),
    );
  }
}
