import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/components/button_icon_circle.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/carts/cart_screen.dart';
import 'package:shop_app/screens/product_detail/components/color_dot_box.dart';
import 'package:shop_app/screens/product_detail/components/product_description_box.dart';
import 'package:shop_app/screens/product_detail/components/product_detail_image.dart';
import 'package:shop_app/screens/product_detail/components/select_num_item_box.dart';
import 'package:shop_app/screens/product_detail/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

import 'detail_header.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kPaddingDefault),
              child: DetailHeader(
                rating: 4.6,
              ),
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            ProductDetaiImage(product: product),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            TopRoundedContainer(
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  ProductDescriptionBox(
                    product: product,
                    onTap: () {
                      print("You clicked on item ${product.description}");
                    },
                  ),
                  TopRoundedContainer(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColorDotBox(product: product),
                          SelectNumItemBox()
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 15),
              child: DefaultButton(
                  text: "Add to cart",
                  press: () {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  }),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
