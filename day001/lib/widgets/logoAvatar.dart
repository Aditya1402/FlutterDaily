// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoList extends StatelessWidget {
  String image;
  bool achievements;
  Color color;
  double width;
  LogoList({Key? key, required this.image, this.color=Colors.white, this.width = 25, this.achievements=true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow:  [
          achievements?
          const BoxShadow(color: Color(0xfff2f2f2), spreadRadius: 2, blurRadius: 5)
          :BoxShadow(color: Color(0xfff2f2f2), spreadRadius: 0, blurRadius: 0)
        ],
      ),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: color,
        child: Center(
          child: ClipRRect(
              child: achievements
                  ? SvgPicture.asset(
                      image,
                      width: width,
                    )
                  : Image.asset(
                      image,
                      width: width,
                    )),
        ),
      ),
    );
  }
}
