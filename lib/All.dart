import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AllOrders extends StatefulWidget {
  const AllOrders({Key? key}) : super(key: key);

  @override
  State<AllOrders> createState() => _AllOrdersState();
}

class _AllOrdersState extends State<AllOrders> {
  var x=15.0;
  var h=20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              20.heightBox,
              Container(

                padding: EdgeInsets.all(15),
                width: context.screenWidth*.9,
                decoration: BoxDecoration(color: Vx.blue100,borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.red,
                            ),
                            10.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Today 10:49 PM",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
                                Text("Motorbike",style: TextStyle(fontSize: 21),)

                              ],
                            ),
                          ],
                        ),
                        Text("RS. 0.0",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),),

                      ],
                    ),
                    Container(
                      width: context.screenWidth*.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: x,
                                    width: x,
                                    color: Colors.red,
                                  ),
                                  Container(height:h,
                                    width: 2,
                                    color: Colors.red,

                                  ),
                                  Container(
                                    height: x,
                                    width: x,
                                    color: Colors.red,
                                  ),
                                  Container(height: h,
                                    width: 2,
                                    color: Colors.red,

                                  ),
                                  Container(
                                    height: x,
                                    width: x,
                                    color: Colors.red,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Container(width: context.screenWidth*.7,child:
                                 Text("2446, Gof links Rd, Pandav Nagar, Ghaziabad, Uttar Pradesh....",overflow: TextOverflow.ellipsis,)),
                                  SizedBox(height: 15,),
                                 Center(widthFactor:5,child: Text("+0 Stops",style: TextStyle(backgroundColor: Colors.yellow),)),
                                  SizedBox(height: 15,),
                                  Container(
                                    width: context.screenWidth*.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(width: context.screenWidth*.5,child:
                                        Text("2446, Gof links Rd, Pandav Nagar, Ghaziabad, Uttar Pradesh....",overflow: TextOverflow.ellipsis,)),
                                        Icon(Icons.navigate_next,size: 30,)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
