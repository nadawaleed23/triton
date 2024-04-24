import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


Widget customButton(
    {required String text,
      double fontSize=14,
      required Color textColor,
      required Color btnColor,
      required double height,
      required double width,
      required double radius,
      required void Function()? onPressed}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: btnColor,
    ),
    height: height,
    width: width,
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontWeight: FontWeight.w600,

        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}