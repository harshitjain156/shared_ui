import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';


class CustomHomeWidget extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;

  CustomHomeWidget({required this.imagePath, required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return
      Container(

        child: Row(
          children: [
            Container(
              height:70,
              //width:40,

              width: context.screenWidth*.19,
              //color: Colors.black26,
              child:Container(color: Colors.blue,),
            ),
            20.widthBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text1.text.bold.size(21).make(),
                Container(
                  width: context.screenWidth*.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text2.text.size(17).make(),
                      Spacer(),
                      Icon(Icons.navigate_next,color: Colors.black,size: 30,)
                    ],
                  ),
                )
              ],
            )

          ],
        )
    ).box.width(context.screenWidth/2).height(context.screenHeight*.14).roundedLg.outerShadow.white.margin(EdgeInsets.symmetric(vertical: 18,horizontal: 12)).padding(EdgeInsets.all(20)).make();

  }
}