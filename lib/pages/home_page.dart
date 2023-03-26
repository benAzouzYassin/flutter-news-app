// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/breaking_news_section.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/recommendation_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //used to open the drawer
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ApplicationBar(scaffoldKey: _scaffoldKey),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 198, 198, 198),
        child: Text("this the drawer"),
      ),
      body: ListView(
        children: const [BreakingNewsSection(), RecommendationSection()],
      ),
      bottomNavigationBar: NavBar(selected: 0),
    );
  }
}

class ApplicationBar extends StatelessWidget {
  const ApplicationBar({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: 0,
      actions: [
        SizedBox(
          width: 20,
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromRGBO(215, 215, 212, 0.5),
          child: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        Spacer(),
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
    );
  }
}
