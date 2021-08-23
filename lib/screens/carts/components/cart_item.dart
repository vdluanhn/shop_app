import 'package:flutter/material.dart';

import 'package:shop_app/models/cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: getProportionateScreenWidth(80),
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15)),
          child: AspectRatio(
            aspectRatio: 0.8,
            child: Image.asset(cart.product.images[0]),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kPaddingDefault, vertical: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(5),
                ),
                Text.rich(TextSpan(
                    text: "\$${cart.product.price}",
                    style: TextStyle(color: kPrimaryColor),
                    children: [
                      TextSpan(
                          text: " x ${cart.numOfItems}",
                          style: TextStyle(color: kSecondColor))
                    ]))
              ],
            ),
          ),
        )
      ],
    );
  }
}
