import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_ui/CustomContainer.dart';
import 'package:shared_ui/constants.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/svg.dart';


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
            color: Colors.white, // Change the background color
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50.0), // Increase border radius
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
    return Scaffold(
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
                  " for".text.size(21).make(),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext buildcontext,int index){
                return  InkWell(
                  onTap: (){
                    _showBottomSheet(context);
                  },
                  child: Container(
                    height: 200,
                    child: Row(
                      children: [
                        Container(

                          width: context.screenWidth*.2,
                          color: Colors.black26,
                        ),
                        20.widthBox,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "2 Wheeler".text.bold.size(21).make(),
                            Container(
                              width: context.screenWidth*.55,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  "Choose from our fleet".text.size(17).make(),
                                  Icon(Icons.navigate_next,color: Colors.black,size: 30,)
                                ],
                              ),
                            )
                          ],
                        )

                      ],
                    )
                  ).box.width(context.screenWidth*.4).height(context.screenHeight*.14).roundedLg.outerShadow.white.margin(EdgeInsets.symmetric(vertical: 18   ,horizontal: 12)).padding(EdgeInsets.all(20)).make(),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
