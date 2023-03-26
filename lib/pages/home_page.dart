// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Color.fromRGBO(215, 215, 212, 0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.menu, color: Colors.black),
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromRGBO(215, 215, 212, 0.5),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                // Do something when the search button is pressed
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(215, 215, 212, 0.5),
              radius: 20,
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Do something when the settings button is pressed
                },
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 224, 9, 9),
        child: Text("this the drawer"),
      ),
      body: Column(
        children: [Text("home page")],
      ),
      bottomNavigationBar: NavBar(selected: 0),
    );
  }
}
