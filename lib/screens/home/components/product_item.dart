import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
    required this.onTap,
    this.width = 140,
    this.aspectRatio = 1.1,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback onTap;
  final double width;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(width),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: aspectRatio,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: kSecondColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(product.images[0]),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product.price}",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () {
                          product.isFavourite = !product.isFavourite;
                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          padding:
                              EdgeInsets.all(getProportionateScreenWidth(6)),
                          width: getProportionateScreenWidth(24),
                          height: getProportionateScreenWidth(24),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: product.isFavourite
                                  ? kPrimaryColor.withOpacity(0.2)
                                  : kSecondColor.withOpacity(0.2)),
                          child: SvgPicture.asset(
                            "assets/icons/Heart Icon_2.svg",
                            color:
                                product.isFavourite ? Colors.red : Colors.grey,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
