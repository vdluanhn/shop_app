import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key? key,
    required this.iconSrc,
    required this.numOfItems,
    required this.onTap,
  }) : super(key: key);
  final String iconSrc;
  final int numOfItems;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            decoration: BoxDecoration(
                color: kSecondColor.withOpacity(0.1), shape: BoxShape.circle),
            child: SvgPicture.asset(iconSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -2,
              right: 1,
              child: Container(
                height: getProportionateScreenWidth(17),
                width: getProportionateScreenWidth(17),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                  child: Text(
                    numOfItems.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(10)),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
