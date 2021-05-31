import 'package:flutter/material.dart';
import 'package:visit_kudus/screens/home.dart';
import 'package:visit_kudus/screens/profile.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Visit Kudus',
    home: new CustomNavigationBottom(),
  ));
}

class CustomNavigationBottom extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<CustomNavigationBottom> {
  int selectedIndex = 0;

  final indexOptions = [Home(), Profile()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: indexOptions.elementAt(selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: 'Profile'),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            fixedColor: Colors.lightBlue,
            onTap: onItemTapped,
          ),
        ),
        onWillPop: _onWillPop);
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit Dialog'),
            content: Text('Do you want to exit Visit Kudus App?'),
            actions: <Widget>[
              MaterialButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              MaterialButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }
}
