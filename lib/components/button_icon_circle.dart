import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../constants.dart';

class ButtonCircleIconCustom extends StatelessWidget {
  const ButtonCircleIconCustom(
      {Key? key,
      required this.iconData,
      this.backGround = Colors.black26,
      this.padingSize = 5,
      this.iconColor = Colors.grey,
      this.shadowColor = Colors.transparent,
      this.onPress})
      : super(key: key);
  final IconData iconData;
  final Color backGround;
  final double padingSize;
  final Color iconColor;
  final Color shadowColor;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Icon(iconData, color: iconColor),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(getProportionateScreenWidth(padingSize)),
          primary: backGround, // <-- Button color
          onPrimary: kPrimaryColor,
          shadowColor: shadowColor // <-- Splash color
          ),
    );
  }
}
