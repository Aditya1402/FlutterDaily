import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTag extends StatelessWidget {
  int index;
  List colors = const [
    [Color(0xffEFECFF), Color(0xff5B3FFF)],
    [Color(0xffE9FAFA), Color(0xff25CED1)],
    [Color(0xffF2F3F7), Color(0xff9CA2BA)],
  ];
  CustomTag(this.index, {Key? key}) : super(key: key);
  List<String> duration = ["12 hrs", "8 hrs", "3 hrs"];
  List<String> level = ["Beginner", "Intermediate", "Advanced"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(level[index],
          style: TextStyle(
            color: colors[index][1],
            fontWeight: FontWeight.w600
          ),),
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: colors[index][0]),
        ),

        const SizedBox(width: 12,),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            duration[index],
            style: const TextStyle(
                color: Color(0xffBDBDBD),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}
