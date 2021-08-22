import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/button_icon_circle.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_detail/components/color_dot_box.dart';
import 'package:shop_app/screens/product_detail/components/product_description_box.dart';
import 'package:shop_app/screens/product_detail/components/product_detail_image.dart';
import 'package:shop_app/screens/product_detail/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

import 'detail_header.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        Row(
                          children: [
                            ButtonCircleIconCustom(
                              iconData: Icons.remove,
                              backGround: Colors.grey.shade100,
                              onPress: () {
                                print("object");
                              },
                            ),
                            ButtonCircleIconCustom(
                              iconData: Icons.add,
                              backGround: Colors.grey.shade100,
                              onPress: () {
                                print("object");
                              },
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonIconCircleCustom extends StatelessWidget {
  const ButtonIconCircleCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.remove,
        color: Colors.grey,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
        backgroundColor:
            MaterialStateProperty.all(Colors.grey.shade100), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return kPrimaryColor; // <-- Splash color
        }),
      ),
    );
  }
}
