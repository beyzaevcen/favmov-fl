import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CColors {
  static const mainColor = Color(0xffD896FF);

  static const white = Colors.white;
  static const textColor = Color(0xffCECECE);
  static const backgroundcolor = Color(0xff161616);
  static const iconColor = Color(0xff373737);
  static const foregroundBlack = Color(0xff202020);
  static const subtitleColor = Color(0xff979797);
  static const sideColor = Color(0x4cb7b7b3);
  static const black = Colors.black;
  static const green = Colors.green;
  static const orange = Colors.orange;
  static const red = Colors.red;
  static const tagColor = Color(0xffD9D9D9);
  static const logoOrange = Color(0xffe68c35);
  static const logoYellow1 = Color(0xffdbae34);
  static const logoYellow2 = Color(0xffbece34);

  static const Map<int, Color> primarySwatchColors = {
    50: Color.fromRGBO(0, 120, 212, .1),
    100: Color.fromRGBO(0, 120, 212, .2),
    200: Color.fromRGBO(0, 120, 212, .3),
    300: Color.fromRGBO(0, 120, 212, .4),
    400: Color.fromRGBO(0, 120, 212, .5),
    500: Color.fromRGBO(0, 120, 212, .6),
    600: Color.fromRGBO(0, 120, 212, .7),
    700: Color.fromRGBO(0, 120, 212, .8),
    800: Color.fromRGBO(0, 120, 212, .9),
    900: Color.fromRGBO(0, 120, 212, 1),
  };

  static const primarySwatch = MaterialColor(0xff0078D4, primarySwatchColors);
}

class Styles {
  static TextStyle get subtitle => TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w300,
        color: CColors.subtitleColor,
      );
  static TextStyle get biggerSubtitle => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w300,
        color: CColors.subtitleColor,
      );
  static TextStyle get title => TextStyle(
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bigTitle => TextStyle(
        fontSize: 21.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get biggerTitle => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get evenBiggerTitle => TextStyle(
        fontSize: 36.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get description => TextStyle(
        fontSize: 15.sp,
        height: 1.23,
        color: CColors.subtitleColor,
      );
}
