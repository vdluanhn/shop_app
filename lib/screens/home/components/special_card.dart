import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.onTap,
  }) : super(key: key);
  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: getProportionateScreenWidth(240),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.grey.withOpacity(0.6),
                    Colors.grey.withOpacity(.15)
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: "$category\n",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "$numOfBrands Brands",
                    style: TextStyle(color: Colors.white))
              ])),
            ),
          ]),
        ),
      ),
    );
  }
}
