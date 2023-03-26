// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int selected;
  const NavBar({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home_filled), label: ""),
        NavigationDestination(icon: Icon(Icons.language), label: "")
      ],
      selectedIndex: selected,
    );
  }
}
