import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0XFF262135);
  static const Color purbleGrayColor = Color(0XFF2C263A);

  static const Color strokeColor = Color(0XFFD9D9D9);
  static const Color whiteColor = Color(0XFFFFFFFF);
  static const Color pinkWhiteColor = Color(0XFFFCF9FB);

  //containers
  static const Color dimGrayColor = Color(0XFF494358);
  static const Color darkpurbleGrayColor = Color(0XFF5A556B);
  static const Color lightYellowColor = Color(0XFFF5F2B8);
  static const Color pinkColor = Color(0XFFFFC9E9);
  static const Color lightCyanColor2 = Color(0XFFD3E8E8);

  //Graphs
  static const Color bluishgrayColor = Color(0XFF292D30);
  static const Color mediumGrayColor = Color(0XFFD2D2D2);

  static const Color lightCyanColor = Color(0XFFD6EBEB);
  static const Color darkWhiteColor = Color(0XFFE8E8E8);
  static const Color lightGrayColor = Color(0XFFD1D1D1);
  static const Color smallTextLightGrayColor = Color(0XFFC7C7C7);
  static const Color darkGrayColor = Color(0XFF9B9B9B);
  static const Color blackColor = Color(0XFF000000);
  static const Color smallTextBlackColor = Color(0XFF292929);
  static const Color darkBlueColor = Color(0XFF243465);
  static const Color lightSlateGrayColor = Color(0XFF948DA9);
  static const Color purbleBlueColor = Color(0XFF2A2439);

  static LinearGradient pinkYellowColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [pinkColor, lightYellowColor],
  );

  static const List<BoxShadow> dropShadow = [ BoxShadow(
    color: Color(0x2E000000),
    blurRadius: 250,
    offset: Offset(-196, 142),
    spreadRadius: 0
  ) ];
}
