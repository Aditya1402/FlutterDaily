import 'package:day02/palette.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int number = 0;

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (() => setState(() {
                number++;
              })),
          child: Container(
            width: 37,
            height: 37,
            child: const Icon(
              FontAwesomeIcons.plus,
              color: Palette.primary,
              size: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200]),
          ),
        ),
        const SizedBox(width: 10),
        Center(
          child: SizedBox(
            width: 38,
            child: Text(
              number <= 9 && number >= 0
                  ? ("0" + number.toString())
                  : (number.toString()),
              style: const TextStyle(
                  color: Palette.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => setState(() {
            number--;
          }),
          child: Container(
            width: 37,
            height: 37,
            child: const Icon(
              FontAwesomeIcons.minus,
              color: Palette.primary,
              size: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[200]),
          ),
        )
      ],
    );
  }
}
