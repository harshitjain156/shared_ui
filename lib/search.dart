import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController location = TextEditingController();

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
              height: context.screenHeight*.28,
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
                            height: 20,
                            width: 20,
                            color: Colors.red,
                          ),
                          Container(height: 60,
                            width: 2,
                            color: Colors.red,

                          ),
                          Container(
                            height: 20,
                            width: 20,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Column(
                        children: [
                        field(size, "hintText", Icons.pin_drop_outlined, location),
                          SizedBox(height: 25,),
                          field(size, "hintText", Icons.pin_drop_outlined, location)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 35,
                    width: 150,
                    child: ElevatedButton(onPressed: (){}, child: Text("ADD STOP", style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black45),),style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Set border radius to 10
                    )),),
                  )
                ],
              ),
            ),
           SizedBox(height: 10,),
           Padding(padding: EdgeInsets.all(12)
           ,child:
             Row(
               children: [
                 Icon(Icons.location_on_rounded,color: Colors.yellow,size: 30,),
                 Text("  Location on Map",style: TextStyle(fontSize: 18,color: Colors.black),)
               ],
             ),)
          ],
        )
      ),
    );
  }
}

Widget field(
    Size size, String hintText, IconData icon, TextEditingController cont) {
  return
    Container(
    height: size.height / 15,
    width: size.width *.78,
    child: TextField(
      controller: cont,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 1),borderRadius:BorderRadius.circular(12) ),
        suffixIcon: Icon(icon),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
