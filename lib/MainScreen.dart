
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'HomeScreen.dart';

import 'controller/home_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var controller=Get.put(HomeContoller());


  List<SvgPicture> unselected=[
    SvgPicture.asset(
      "assets/Home.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Order.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Payments.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Account.svg",
      width: 24,
      height: 24,
    ),
  ];

  List<SvgPicture> selected=[
    SvgPicture.asset(
      "assets/Home2.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Order2.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Payments.svg",
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      "assets/Account.svg",
      width: 24,
      height: 24,
    ),
  ];
   List<ColorFiltered> unselectedIcons = [
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child:
      SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Account.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Payments.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.grey, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    )

  ];
  List<ColorFiltered> selectedIcons = [
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    ),
    ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.deepOrange, // Change the color here
        BlendMode.srcIn,
      ),
      child: SvgPicture.asset(
        "assets/Home.svg",
        width: 24,
        height: 24,
      ),
    )

  ];

  var navbarItem=[
    BottomNavigationBarItem(icon:
    SvgPicture.asset(
      "assets/Home.svg",
      width: 24,
      height: 24,
    ),label: "Home"),
    BottomNavigationBarItem(icon: SvgPicture.asset("assets/Order.svg"),label: "Order"),
    BottomNavigationBarItem(icon: SvgPicture.asset("assets/Payments.svg"),label: "Payment"),
    BottomNavigationBarItem(icon: SvgPicture.asset("assets/Account.svg"),label: "Account"),

  ];

  var navBody=[
    HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),HomeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Obx(()=>
            Container(

              margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(8),

              decoration: BoxDecoration(color: Colors.yellowAccent,borderRadius: BorderRadius.circular(20)),
              child: BottomNavigationBar(currentIndex: controller.currentNavIndex.value,elevation: 0,items:
              List.generate(

                navbarItem.length,
                    (index) => BottomNavigationBarItem(
                  icon: controller.currentNavIndex.value == index
                      ?
                  selected[index]
                      : unselected[index],
                  label: navbarItem[index].label,
                ),
              ),

                backgroundColor:Colors.yellowAccent,type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                unselectedIconTheme: IconThemeData(color: Colors.black),
                onTap: (value){
                  controller.currentNavIndex.value=value;
                },
                selectedLabelStyle: const TextStyle(color: Colors.black),),
            ),
        ),
      ),
    );;
  }
}
