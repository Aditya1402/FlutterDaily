import 'package:day001/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children:  
            [
              const SizedBox(height: 80,),

              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset("assets/images/illustration.svg")),

              const SizedBox(height: 25,),
              
              const Text("Hey Luke,\nthere's a new course for you!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF333333),
                fontWeight: FontWeight.w700,
                fontSize: 24
              ),),

              const SizedBox(height: 20),

              const Text(
                "Find out how our new matching tool\ncan help you achieve your goals.",
                style: TextStyle(fontSize: 17,
                color: Color(0xFF4F4F4F)),
                textAlign: TextAlign.center),

                const SizedBox(height: 150),

              const Button(),

              const TextButton(onPressed: null, child: Text("Not now",
              style: TextStyle(fontWeight: FontWeight.w500,
        fontSize: 17,
        color: Color(0xFFBDBDBD)))),

        
            ],
          ),
        ),
      ),
    );

  }
}
