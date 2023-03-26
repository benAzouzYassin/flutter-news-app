// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selected;
  const NavBar({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
            icon: Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
            label: ""),
        NavigationDestination(
            icon: Icon(
              Icons.language,
              color: Colors.grey,
            ),
            label: ""),
        NavigationDestination(
            icon: Container(
              child: Image.asset(
                "lib/icons/save.png",
                width: 20,
                color: Colors.grey,
              ),
            ),
            label: ""),
        NavigationDestination(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.grey,
            ),
            label: "")
      ],
      selectedIndex: selected,
    );
  }
}
