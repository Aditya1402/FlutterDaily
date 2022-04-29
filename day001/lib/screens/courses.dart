import 'package:day001/widgets/achievements.dart';
import 'package:day001/widgets/active_users.dart';
import 'package:day001/widgets/carousel.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          const [
            Text("Your Courses",
            style: TextStyle(
              color: Color(0XFF333333),
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),

            Carousel(),

            SizedBox(height: 20,),

            Achievements(),

            SizedBox(height: 25,),

            Users()

            
          ],
        ),
      )),
    );
  }
}
