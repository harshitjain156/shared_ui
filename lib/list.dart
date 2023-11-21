import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),

        title: Text(
          'Select your Good type',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.91,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
      ),
      body: Container(
        child: Column(
    children: [
        Container(
            margin: EdgeInsets.all(10),

            padding: EdgeInsets.all(20),
            height: context.screenHeight*.8,
            child: ListView.builder(itemCount: 19,itemBuilder: (context,index){
              return listItem();
            })

            ),
        Container(
          width: context.screenWidth*.7,
          height: context.screenWidth*.11,
          child: ElevatedButton(onPressed: (){}, child: Text("Update",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          backgroundColor: Color(0xFFFFC20C)),),
        )
    ],
        ),
      ),
    );
  }
}

Widget listItem(){
  return Column(
    children: [
      Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(title: Text("111"),
        tilePadding: EdgeInsets.all(0),
        onExpansionChanged: (bool expanded){},
        trailing: SizedBox.shrink(),
          expandedAlignment: Alignment.centerLeft,
        children: [
          Text(
            'Quantity : Loose',
            style: TextStyle(
              color: Color(0xFF3B3B3B),
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,

            ),
          )
        ],),
      ),
      Divider()
    ],
  );
}

