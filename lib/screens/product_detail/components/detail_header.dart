import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/button_icon_circle.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DetailHeader extends StatelessWidget {
  final double rating;
  const DetailHeader({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Container(
        //   height: getProportionateScreenWidth(35),
        //   width: getProportionateScreenWidth(35),
        //   padding: EdgeInsets.symmetric(horizontal: 4),
        //   decoration: BoxDecoration(
        //       color: kSecondColor.withOpacity(0.1), shape: BoxShape.circle),
        //   child: IconButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       icon: Icon(Icons.arrow_back_ios)),
        // ),
        ButtonCircleIconCustom(
          backGround: Colors.grey.shade200,
          iconData: Icons.arrow_back,
          padingSize: 6,
          onPress: () {
            Navigator.pop(context);
          },
        ),
        Container(
            height: getProportionateScreenWidth(30),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: kSecondColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Text(
                  rating.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset("assets/icons/Star Icon.svg")
              ],
            ))
      ],
    );
  }
}
