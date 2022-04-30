import 'package:day02/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const
        [
          InkWell(child: Icon(
            FontAwesomeIcons.cartShopping,
            color: Palette.primary,
            size: 20,),)
        ],
        title: const Text("FurnitureCo.",
        style: TextStyle(
          color: Palette.primary,
          fontWeight: FontWeight.w600
        ),),
      ),

      body: const Padding(padding: EdgeInsets.all(10)),
    );
  }
}
