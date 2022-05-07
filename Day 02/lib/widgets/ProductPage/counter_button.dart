import 'package:day02/widgets/ProductPage/counter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../palette.dart';

class CounterButton extends StatefulWidget {
  CounterButton(this.icon);
  IconData icon;
  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 37,
      height: 37,
      child: Icon(
        widget.icon,
        color: Palette.primary,
        size: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
    );
  }
}
