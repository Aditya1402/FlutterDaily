import 'package:day001/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:  
          [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset("assets/images/illustration.svg")),

            
            const Text("Hey Luke, there's a new course for you!"),
            const Text(
              "Find out how our new matching tool can help you achieve your goals.",
              textAlign: TextAlign.center),

            const Button(),

            const TextButton(onPressed: null, child: Text("Not now"))
          ],
        ),
      ),
    );

  }
}
