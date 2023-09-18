import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget CustomContainer({child}){
  return Container(
    child: child,
  ).box.shadowXs.roundedLg.white.make();
}