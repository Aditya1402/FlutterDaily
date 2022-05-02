import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../palette.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 21.5,
        elevation: 0,
        unselectedItemColor: Color(0xFF999999),
        selectedItemColor: Palette.primary,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidCompass), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookmark), label: "Bookmarks"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.ring), label: "Reminder"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: "Profile"),
        ]);
  }
}
