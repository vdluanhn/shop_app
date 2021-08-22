import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text, image;
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(text),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
