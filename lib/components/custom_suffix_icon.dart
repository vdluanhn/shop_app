import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String image;
  const CustomSuffixIcon({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, getProportionateScreenWidth(20),
          getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
      child: SvgPicture.asset(
        image,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}
