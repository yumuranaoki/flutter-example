import 'package:flutter/material.dart';
import './home.dart';

class MyBottomNavigation extends StatefulWidget {
  MyBottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Home(),
    Text('search'),
    Text('post'),
    Text('activity'),
    Text('profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: SizedBox.shrink()),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}