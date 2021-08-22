import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3),
      padding: EdgeInsets.all(3),
      width: getProportionateScreenWidth(30),
      height: getProportionateScreenWidth(30),
      decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
