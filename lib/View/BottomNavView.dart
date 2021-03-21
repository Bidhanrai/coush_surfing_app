import 'package:couch_surfing/View/CalenderView.dart';
import 'package:couch_surfing/View/HomeView.dart';
import 'package:couch_surfing/View/MessageView.dart';
import 'package:couch_surfing/View/ProfileView.dart';
import 'package:flutter/material.dart';

class BottomNavView extends StatefulWidget {
  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {

  int _stateValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _stateValue == 0
          ? HomeView()
          : _stateValue == 1
          ? CalenderView()
          : _stateValue == 2
          ? MessageView()
          : ProfileView(),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        currentIndex: _stateValue,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _stateValue = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Calender",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
