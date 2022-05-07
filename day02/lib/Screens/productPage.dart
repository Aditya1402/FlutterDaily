import 'package:day02/palette.dart';
import 'package:day02/widgets/ProductPage/counter.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatelessWidget {
  late BuildContext scaffoldContext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(
      builder: (BuildContext) {
        scaffoldContext = context;
        return SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 85,
                    bottom: 210,
                    child: Container(
                      height: 500,
                      width: 900,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Palette.secondary, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Image.asset(
                    "assets/images/product.png",
                    width: 800,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Two Seater Luxury Sofa",
                style: TextStyle(
                    fontSize: 22.5,
                    color: Palette.primary,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Text(
                    "\$50.99",
                    style: TextStyle(
                        color: Palette.navyGreen,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(left: 160), child: Counter())
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/images/star.svg", width: 25),
                  const SizedBox(width: 5),
                  const Text(
                    "4.5",
                    style: TextStyle(
                        color: Palette.primary,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "(500 Reviews)",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Minimal Sofa is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home.",
                style: TextStyle(fontSize: 15.5),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: const Icon(
                      FontAwesomeIcons.bookmark,
                      color: Palette.primary,
                    ),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0XFFF0F0F0),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => ScaffoldMessenger.of(scaffoldContext)
                          .showSnackBar(SnackBar(
                            duration: const Duration(seconds: 2),
                        backgroundColor: Palette.navyGreen,
                        content: Text(
                          number > 1
                              ? "${number} items added to your cart!"
                              : number == 1
                                  ? "${number} item added to your cart!"
                                  : "Nothing selected. Please select the quantity first.",
                          style: const TextStyle(fontFamily: 'ClashDisplay'),
                        ),
                      )),
                      child: Container(
                        child: const Center(
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        height: 65,
                        decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
      },
    ));
  }
}
