import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFEDCF);
const kPrimaryGradientColor = LinearGradient(
    colors: [Color(0xffffa53e), Color(0xffff7643)],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight);
const kSecondColor = Color(0xff979797);
const kTextColor = Color(0xff757575);
const kTextLinkColor = Colors.blueAccent;

const kAnimationDuration = Duration(milliseconds: 200);

const double kPaddingDefault = 15;
const double kMarginDefault = 15;

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: otpOutlineInputBorder(),
  focusedBorder: otpOutlineInputBorder(),
  border: otpOutlineInputBorder(),
);

OutlineInputBorder otpOutlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kTextColor));
}
