import 'package:day001/widgets/achievements.dart';
import 'package:day001/widgets/active_users.dart';
import 'package:day001/widgets/bottom_nav_bar.dart';
import 'package:day001/widgets/carousel.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
         [
           const SizedBox(height: 45,),
           
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Your Courses",
            style: TextStyle(
              color: Color(0XFF333333),
              fontSize: 24,
              fontWeight: FontWeight.w700
            ),),
          ),

          const SizedBox(height: 20,),

          Carousel(),
          
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Achievements(),
          ),

          const SizedBox(height: 20,),

          const Padding(
            padding: EdgeInsets.only(left: 25,right: 25),
            child: Users(),
          ),

          
        ],
      )),
    );
  }
}
