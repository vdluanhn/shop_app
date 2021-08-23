import 'package:flutter/material.dart';
import 'package:shop_app/components/button_icon_circle.dart';
import 'package:shop_app/models/cart.dart';

import '../../../size_config.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(60),
      child: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonCircleIconCustom(
              iconData: Icons.arrow_back,
              backGround: Colors.grey.shade200,
              onPress: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
          ],
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            children: [
              Text(
                "Your cart",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text("${demoCarts.length} items"),
            ],
          ),
        )
      ]),
    );
  }
}
