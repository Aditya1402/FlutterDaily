import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoList extends StatelessWidget {
  String image;
  Color color;
  double width;
  LogoList({required this.image, required this.color, this.width = 25});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(color: Color(0xfff2f2f2), spreadRadius: 2, blurRadius: 5)
        ],
      ),
      child: CircleAvatar(
        radius: 32,
        backgroundColor: color,
        child: Center(
          child: ClipRRect(
            child: SvgPicture.asset(
              image,
              width: width,
            ),
          ),
        ),
      ),
    );
  }
}
