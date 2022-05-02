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
  int selected = 0;
  List selectorImage = [
    "assets/images/popular.svg",
    "assets/images/chairs.svg",
    "assets/images/tables.svg",
    "assets/images/sofa.svg",
    "assets/images/beds.svg",
    "assets/images/chairs.svg"
  ];

  List titles = ["Popular", "Chairs", "Tables", "Sofas", "Beds", "Lamps"];

  List<Color> color = [
    Palette.secondary,
    Palette.secondary,
    Palette.secondary,
    Palette.secondary,
    Palette.secondary,
    Palette.secondary
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.builder(
          padding: EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          itemCount: selectorImage.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(index != 0 ? 13 : 16.9),
                      child: SvgPicture.asset(
                        selectorImage[index],
                        color: selected == index ? Colors.white : Palette.grey,
                      ),
                      width: 55,
                      decoration: BoxDecoration(
                          color: selected == index
                              ? Palette.primary
                              : Palette.secondary,
                          // color[index],
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    titles[index],
                    style: TextStyle(
                      fontWeight:
                          selected == index ? FontWeight.w500 : FontWeight.w400,
                      color: selected == index ? Palette.primary : Palette.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
