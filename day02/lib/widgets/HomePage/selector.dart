import 'package:day02/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  List selectorImage = [
    "assets/images/popular.svg",
    "assets/images/chairs.svg",
    "assets/images/tables.svg",
    "assets/images/sofa.svg",
    "assets/images/beds.svg",
    "assets/images/chairs.svg",
  ];

  List<Color> color = [Palette.secondary, Palette.secondary,Palette.secondary,Palette.secondary,Palette.secondary,Palette.secondary];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: selectorImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (color[index] == Palette.secondary)
                      color[index] = Palette.primary;
                    else
                      color[index] = Palette.secondary;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    selectorImage[index],
                  ),
                  width: 55,
                  decoration: BoxDecoration(
                      color: color[index],
                      borderRadius: BorderRadius.circular(13)),
                ),
              ),
            );
          }),
    );
  }
}
