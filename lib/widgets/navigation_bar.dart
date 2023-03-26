import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final int selected;
  const NavBar({super.key, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GNav(
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            text: "Home",
          ),
          GButton(
            icon: Icons.language,
            text: "Global",
          ),
          GButton(
            icon: Icons.save,
            text: "Saved",
          ),
          GButton(
            icon: Icons.person_outline_outlined,
            text: "Profile",
          ),
        ],
        color: Colors.grey,
        activeColor: Colors.white,
        padding: const EdgeInsets.all(5),
        gap: 5,
        tabBackgroundColor: Colors.blue,
        selectedIndex: selected,
      ),
    );
  }
}
