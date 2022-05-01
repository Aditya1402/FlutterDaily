// ignore_for_file: prefer_const_constructors

import 'package:day02/palette.dart';
import 'package:day02/widgets/HomePage/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/HomePage/bottomNavBar.dart';
import '../widgets/HomePage/selector.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: 
        [
          Padding(
            padding: EdgeInsets.only(top: 25, right: 20),
            child: InkWell(child: 
            SvgPicture.asset("assets/images/cart.svg", width: 28,)
            // Icon(
            //   FontAwesomeIcons.cartShopping,
            //   color: Palette.primary,
            //   size: 18)
              ),
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
        children: const [
          SearchBar(),

          SizedBox(height: 20,),

          Selector()
        ],
      )),
    );
  }
}
