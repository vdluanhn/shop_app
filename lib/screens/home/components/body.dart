import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/popular_product_box.dart';
import 'package:shop_app/screens/home/components/special_box.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(kPaddingDefault),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(5),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            SpecialBox(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            PopularProductBox(),
            SizedBox(
              height: getProportionateScreenWidth(5),
            ),
          ],
        ),
      ),
    ));
  }
}
