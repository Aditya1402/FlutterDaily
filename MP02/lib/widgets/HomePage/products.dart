// ignore_for_file: prefer_const_constructors

import 'package:blur/blur.dart';
import 'package:day02/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Screens/productPage.dart';

class Products extends StatelessWidget {
  List<Map> info = [
    {
      'image': "assets/images/sofa1.png",
      'label': "Royal Palm Sofa",
      'price': "\$50.18"
    },
    {
      'image': "assets/images/sofa2.png",
      'label': "Leatherette Sofa",
      'price': "\$30.99"
    },
    {
      'image': "assets/images/sofa3.png",
      'label': "Modern Sofa",
      'price': "\$45.99"
    },
    {
      'image': "assets/images/sofa4.png",
      'label': "Leatherette Sofa",
      'price': "\$20.99"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              crossAxisSpacing: 20,
              childAspectRatio: 1.53 / 2,
              mainAxisSpacing: 20),
          itemCount: 4,
          itemBuilder: (BuildContext ctx, index) {
            return GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductPage())),
              child: Container(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset.fromDirection(-2, -7.5),
                            color: Color.fromARGB(255, 239, 239, 239),
                            spreadRadius: 0.15,
                            blurRadius: 18)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.topCenter,
                    children: [
                      Blur(
                          blur: 12,
                          child: SvgPicture.asset("assets/images/shadow.svg")),
                      Positioned(
                          bottom: index == 1
                              ? 53
                              : (index == 3 ? 46 : (index == 2 ? 35 : 40)),
                          right: 15,
                          child: Image.asset(info[index]['image'])),
                      Positioned(
                        left: 15,
                        top: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              info[index]['label'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(info[index]['price'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Palette.navyGreen,
                                        fontSize: 19)),
                                Container(
                                  margin: EdgeInsets.only(left: 55),
                                  height: 28,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Palette.secondary, width: 1.5),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                      child: Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 13,
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
