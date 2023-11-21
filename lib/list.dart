import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  int _value=1;

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
                child: "Goods Quantity".text.bold.align(TextAlign.start).black.size(21).make(),
              ),
              ListTile(
                title: Text(
                  'Loose',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.91,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,

                  ),
                ),
                leading: Radio(
                  activeColor: Colors.yellow,
                  fillColor: MaterialStateColor.resolveWith((states) =>  Colors.yellow),

                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: TextField(

                ),
                leading: Radio(
                  activeColor: Colors.yellow,
                  fillColor: MaterialStateColor.resolveWith((states) =>  Colors.yellow),

                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                ),
              ),

              20.heightBox,
              Container(
                width: context.screenWidth * .7,
                height: context.screenWidth * .11,
                child: ElevatedButton(onPressed: () {},
                  child: Text("Done", style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                      backgroundColor: Color(0xFFFFC20C)),),
              ),
              20.heightBox,
            ],
          ),
        );
      },
    );
  }


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
                height: context.screenHeight * .8,
                child: ListView.builder(
                    itemCount: 19, itemBuilder: (context, index) {
                  return listItem();
                })

            ),
            Container(
              width: context.screenWidth * .7,
              height: context.screenWidth * .11,
              child: ElevatedButton(onPressed: () {},
                child: Text("Update", style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                    backgroundColor: Color(0xFFFFC20C)),),
            )
          ],
        ),
      ),
    );
  }


  Widget listItem() {
    return Column(
      children: [
        Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(title: Text("111"),
            tilePadding: EdgeInsets.all(0),
            onExpansionChanged: (bool expanded) {},
            trailing: SizedBox.shrink(),
            expandedAlignment: Alignment.centerLeft,
            children: [
              InkWell(
                onTap: () {
                  _showBottomSheet(context);
                  //
                },
                child: Text(
                  'Quantity : Loose',
                  style: TextStyle(
                    color: Color(0xFF3B3B3B),
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,

                  ),
                ),
              )
            ],),
        ),
        Divider()
      ],
    );
  }

}