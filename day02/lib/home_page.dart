// ignore_for_file: prefer_const_constructors

import 'package:day02/palette.dart';
import 'package:day02/widgets/selector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
        iconSize: 20,
        elevation: 0,
        unselectedItemColor: Color(0xFF999999),
        selectedItemColor: Palette.primary,
        items: 
        const 
        [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidCompass),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bookmark),label: "Bookmarks"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bell),label: "Reminder"),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: "Profile"),
        ]),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const
        [
          Padding(
            padding: EdgeInsets.only(top: 25, right: 20),
            child: InkWell(child: Icon(
              FontAwesomeIcons.cartShopping,
              color: Palette.primary,
              size: 18)),
          )
        ],
        title:  const Padding(
          padding: EdgeInsets.only(top: 25,left: 8),
          child: Text("FurnitureCo.",
          style: TextStyle(
            color: Palette.primary,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),

      body:  Padding(padding: EdgeInsets.all(20),
      child: 
      Column(
        children: [
          TextField(
            cursorColor: Palette.primary,
            keyboardType: TextInputType.text,
            decoration: InputDecoration
            (
              contentPadding: EdgeInsets.all(24),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: Colors.transparent)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              fillColor: Palette.secondary,
              hintText: "Search for furniture",
              
              prefixIcon: Icon(Icons.search_rounded, size: 25,color: Palette.grey,)
            ),
          ),

          SizedBox(height: 20,),

          Selector()
        ],
      )),
    );
  }
}
