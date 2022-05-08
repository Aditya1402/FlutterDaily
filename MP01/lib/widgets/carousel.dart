import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custom_tag.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  List<String> titles = ["Design Principles", "UX Design for Devs", "Explore"];
  List<String> images = [
    "assets/images/bg1.svg",
    "assets/images/bg2.svg",
    "assets/images/bg3.svg",
  ];

  Carousel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      
      constraints: const BoxConstraints(maxHeight: 320),
      child: Expanded(
        child: ListView.builder(
          physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: index==0?const EdgeInsets.only(left: 25)
                :const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 260,
                      width: 180,
                      child: Card(
                        semanticContainer: true,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SvgPicture.asset(images[index],fit: BoxFit.cover,)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: const Color(0xff9381FF),
                        elevation: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        titles[index],
                        style: const TextStyle(
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.w600,
                            fontSize: 17.5),
                      ),
                    ),
        
                    const SizedBox(height: 6,),
        
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: CustomTag(index),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
