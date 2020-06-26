import 'package:flutter/material.dart';
import 'package:holamundo/src/pages/feed/feed.dart';
import 'package:holamundo/src/styles/colors.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }

}



class _HomeState extends  State<Home> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    Feed(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsApp.primary,
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsApp.yellow,
        unselectedItemColor: ColorsApp.yellow.withAlpha(100),
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          ),
        ],
      ),
    );
  }
}