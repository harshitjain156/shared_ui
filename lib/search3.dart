import 'package:flutter/material.dart';
import 'package:shared_ui/search2.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen3 extends StatefulWidget {
  const SearchScreen3({Key? key}) : super(key: key);

  @override
  State<SearchScreen3> createState() => _SearchScreen3State();
}

class _SearchScreen3State extends State<SearchScreen3> {

  final TextEditingController location = TextEditingController();
  bool addStop=false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,

          body:Column(
            children: [
              Container(

                padding: EdgeInsets.all(10),
                height: context.screenHeight*.6,
                width: context.screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // Shadow color
                      spreadRadius: 1, // Spread radius of the shadow
                      blurRadius: 5, // Blur radius of the shadow
                      offset: Offset(0, 5), // Offset from the top left corner
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.red,
                            ),
                            field(size, "hintText", Icons.pin_drop_outlined, location),
                          ],
                        ),
                        Container(margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 40,
                          width: 2,
                          color: Colors.red,

                        ),
                      ],
                    ),
                    (addStop)?Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  addStop=false;
                                });
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Colors.blue,
                              ),
                            ),
                            field(size, "hintText", Icons.pin_drop_outlined, location),
                          ],
                        ),
                        Container(margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 40,
                          width: 2,
                          color: Colors.red,

                        ),
                      ],
                    ):SizedBox(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              color: Colors.green,
                            ),
                            field(size, "hintText", Icons.pin_drop_outlined, location),
                          ],
                        ),

                      ],
                    ),
                    !addStop?Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 40,
                          width: 2,
                          color: Colors.red,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  addStop=true;
                                });

                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                                height: 20,
                                width: 20,
                                color: Colors.blue,
                              ),
                            ),

                          ],
                        ),

                      ],
                    ):SizedBox()



                  ],
                ),
              ),

            ],
          )
      ),
    );
  }
}
