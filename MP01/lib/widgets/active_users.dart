import 'package:flutter/material.dart';

import 'logoAvatar.dart';

class Users extends StatelessWidget {
  const Users({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
       [
        const Text("Most Active Users",
        style: TextStyle(
              color: Color(0XFF333333),
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),
        
        const SizedBox(height: 23,),

        Row(
          children: [
            LogoList(image:"assets/images/user1.png",width: double.infinity,achievements: false,),
            const SizedBox(width: 11),
            LogoList(image:"assets/images/user2.png",width: 150,achievements: false,),
            const SizedBox(width: 11),
            LogoList(image:"assets/images/user3.png",width:120,achievements: false,),
            const SizedBox(width: 11),
            LogoList(image:"assets/images/user4.png",width: double.infinity,achievements: false,),
            const SizedBox(width: 11),
          ],
        )
      ],
    );
  }
}