import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xff6A49F6),
      unselectedItemColor: const Color(0xffB8B6BE),
      elevation: 0,
      items: 
    const [
      BottomNavigationBarItem(
        icon: Icon(Icons.folder,size: 35),
        label: ""),

      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble_rounded,size: 35,),
        label: ""),

      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_add_rounded,size: 35,),
        label: ""),
    ]);
  }
}
