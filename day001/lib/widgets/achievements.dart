import 'package:day001/widgets/logoAvatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Achievements extends StatelessWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
       [
        const Text("Achievements",
        style: TextStyle(
              color: Color(0XFF333333),
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),
        
        const SizedBox(height: 23,),

        Row(
          children: [
            LogoList(image:"assets/images/logo1.svg", color:Colors.white),
            const SizedBox(width: 11),
            LogoList(image:"assets/images/logo2.svg", color:Colors.white, width: 38,),
            const SizedBox(width: 11),
            LogoList(image:"assets/images/logo3.svg", color:Color(0xff1FB6FF)),
            const SizedBox(width: 11),
            GestureDetector(
              onTap: (){},
              child: 
              Stack(
                children: 
                 [
                  SvgPicture.asset("assets/images/Polygon.svg",width: 35,),
                  Positioned(
                    top: 12,
                    left: 8,
                    child: Text("+3",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                    ),),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
