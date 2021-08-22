import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

//Lay chieu cao tuong xung voi moi loai kich co man hinh
double getProportionateScreenHeight(double inputHeight) {
  double creenHeight = SizeConfig.screenHeight ?? 1;
  //812 la chieu cao bo cuc nha thiet ke su dung
  return (inputHeight / 812.0) * creenHeight;
}

//Lay chieu rong tuong xung voi moi loai kich co man hinh
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth ?? 1;
  //375 la chieu rong bo cuc nha thiet ke su dung
  return (inputWidth / 375.0) * screenWidth;
}
