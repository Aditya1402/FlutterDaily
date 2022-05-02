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

  List<Map> selector = 
  [
    {'image':"assets/images/popular.svg",'title':"Popular"},
    {'image':"assets/images/chairs.svg",'title':"Chairs"},
    {'image':"assets/images/tables.svg",'title':"Tables"},
    {'image':"assets/images/sofa.svg",'title':"Sofas"},
    {'image':"assets/images/beds.svg",'title':"Beds"},
    {'image':"assets/images/chairs.svg",'title':"Lamps"},
  ];


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
          padding: const EdgeInsets.only(left: 20),
          scrollDirection: Axis.horizontal,
          itemCount: selector.length,
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
                        selector[index]['image'],
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
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    selector[index]['title'],
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
