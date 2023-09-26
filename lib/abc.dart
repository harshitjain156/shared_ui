import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/svg.dart';

import 'custom.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          width: context.screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50.0),
            ),
          ),
          // You can customize the appearance of your bottom sheet here
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              20.heightBox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: "Choose Your Service".text.bold.black.size(21).make(),
              ),
              InkWell(

                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 100,
                  width: context.screenWidth*.9,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            color: Colors.red,
                          ),
                          "Open".text.size(18).make()

                        ],
                      ),
                      Icon(Icons.navigate_next,color: Colors.black,size: 35,)
                    ],
                  ),
                ).box.margin(EdgeInsets.all(10)).roundedLg.blue50.make(),
              ),
              10.heightBox,
              InkWell(

                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 100,
                  width: context.screenWidth*.9,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            color: Colors.red,
                          ),
                          "Open".text.size(18).make()

                        ],
                      ),
                      Icon(Icons.navigate_next,color: Colors.black,size: 35,)
                    ],
                  ),
                ).box.margin(EdgeInsets.all(10)).roundedLg.blue50.make(),
              ),
              20.heightBox
            ],
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width*.5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    10.widthBox,
                    Icon(Icons.map_outlined, color: Colors.black,size: 30,),
                    10.widthBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            "Pick up From".text.size(19).bold.make(),
                            Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                          ],
                        ),
                        "Pick up From".text.size(12).make(),
                      ],
                    )

                  ],
                ),
                20.heightBox,
                Row(
                  children: [
                    25.widthBox,
                    "Book ".text.size(21).make(),
                    SizedBox(
                      height:60,
                      width:50,


                    ),
                    " for".text.size(21).make(),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    InkWell(
                      onTap: (){
                        _showBottomSheet(context);
                        //
                      },
                      child:CustomHomeWidget(imagePath: "assets/icons8-truck-48.png",text1: "Trucks",text2: "Change from our fleet",),

                    ),

                    InkWell(
                      onTap: (){
                        _showBottomSheet(context);
                        //
                      },
                      child:CustomHomeWidget(imagePath: "assets/bike.png",text1: "2 Wheeler",text2:"For smaller goods"),

                    ),

                    InkWell(
                        onTap: (){
                          _showBottomSheet(context);
                          //
                        },
                        child:CustomHomeWidget(imagePath: "assets/Payments.png",text1: "3 Wheeler",text2: "For medium goods",)

                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}