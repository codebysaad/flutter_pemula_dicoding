import 'package:flutter/material.dart';
import 'package:visit_kudus/screens/home.dart';
import 'package:visit_kudus/screens/profile.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Visit Kudus',
    home: new CustomNavigationBottom(),
  ));
}

class CustomNavigationBottom extends StatefulWidget{
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State{
  int selectedIndex = 0;

  final indexOptions = [
    Home(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: indexOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        fixedColor: Colors.lightBlue,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}