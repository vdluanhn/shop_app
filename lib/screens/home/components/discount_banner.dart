import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("You clicked banner");
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(15)),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff4a3298)),
          child: RichText(
              text: TextSpan(
                  text: "A Summer Surprise\n",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(14)),
                  children: [
                TextSpan(
                    text: "Cashback 20%",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(24)))
              ]))),
    );
  }
}
