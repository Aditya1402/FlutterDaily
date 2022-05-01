import 'package:day02/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../palette.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
      [
      TextField(
        cursorColor: Palette.primary,
        textAlign: TextAlign.left,
        maxLines: 1,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 24),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: const BorderSide(color: Colors.transparent)),
            filled: true,
            fillColor: Palette.secondary,
            hintText: "Search for furniture",
            prefixIcon:   const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                MyFlutterApp.search,
                size: 25,
                color: Palette.grey,
              ),
            )
            ),
      ),

      Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: null,
          child: Container
          (
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Palette.primary
            ),
            width: 68,
            height: 68,
            child: SvgPicture.asset("assets/images/settings.svg",color: Colors.white,)
          ),
        ),
      )
      ]
    );
  }
}
