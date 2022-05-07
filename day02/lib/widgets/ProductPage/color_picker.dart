import 'package:day02/palette.dart';
import 'package:flutter/material.dart';

class Picker extends StatelessWidget {
  Color colorPicker;
  Picker(this.colorPicker);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(shape: BoxShape.circle, color: colorPicker),
        ),
      ),
    );
  }
}
