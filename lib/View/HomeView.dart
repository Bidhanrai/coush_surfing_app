import 'package:couch_surfing/View/CalenderView.dart';
import 'package:couch_surfing/View/CreateTripView.dart';
import 'package:couch_surfing/View/MessageView.dart';
import 'package:couch_surfing/View/ProfileView.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int _stateValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search_outlined),
              hintText: "Where do you want to go?",
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ),
      body: _stateValue == 0
          ? Center(
              child: Text("Home"),
            )
          : _stateValue == 1
              ? CalenderView()
              : _stateValue == 2
                  ? MessageView()
                  : ProfileView(),
      drawer: Drawer(
        child: SafeArea(
          child: Text(""),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 30,),
        tooltip: "Create trip",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateTripView()));
        },

      ),
    );
  }
}
