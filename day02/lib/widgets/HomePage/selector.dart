import 'package:day02/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Selector extends StatefulWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  State<Selector> createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  bool active = false;
  int tempIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: () {
                  setState(() {
                    active = !active;
                    tempIndex = index;
                  });
                },
                child: Container(
                  child: const Icon(FontAwesomeIcons.diamondTurnRight),
                  width: 64,
                  decoration: BoxDecoration(
                      color: tempIndex==index ? Palette.secondary : Palette.primary,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            );
          }),
    );
  }
}
