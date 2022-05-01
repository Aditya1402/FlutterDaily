import 'package:day02/palette.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  List images = const[
    "assets/images/sofa1.png",
    "assets/images/sofa2.png",
    "assets/images/sofa3.png",
    "assets/images/sofa4.png",
  ];

  List <List<String>>labels = const[
    ["Royal Palm Sofa","\$50.18"],
    ["Leatherette Sofa","\$30.99"],
    ["Modern Sofa","\$45.99"],
    ["Leatherette Sofa","\$20.99"]
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              childAspectRatio: 1.5 / 2,
              mainAxisSpacing: 40),
          itemCount: 4,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset.fromDirection(-2, -7.5),
                          color: Color.fromARGB(255, 237, 237, 237),
                          spreadRadius: 0.2,
                          blurRadius: 13)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                        bottom: 
                        95,
                        right: 15,
                        child: Image.asset(images[index])),

                    Positioned(
                      left: 15,
                      top: 165,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                          Text(labels[index][0],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                          ),),

                          SizedBox(height: 8,),
                    
                          Row(
                            children: 
                            [
                              Text(labels[index][1],
                              style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4E5A37),
                            fontSize: 19
                          )
                              ),

                            
                            Container(
                              decoration: BoxDecoration
                              (
                                color: Palette.secondary,
                                borderRadius: BorderRadius.circular(5),
                                
                              ),
                            )
                            ],
                          )
                    
                        ],
                      ),
                    )
                  ],
                ));
          }),
    );
  }
}
