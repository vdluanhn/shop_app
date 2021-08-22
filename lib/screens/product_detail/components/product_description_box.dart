import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescriptionBox extends StatelessWidget {
  const ProductDescriptionBox({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: getProportionateScreenWidth(65),
            decoration: BoxDecoration(
                color: product.isFavourite
                    ? kPrimaryColor.withOpacity(0.2)
                    : kSecondColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color: product.isFavourite ? Colors.red : Colors.grey.shade400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
          child: Column(
            children: [
              Text(
                product.description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
              GestureDetector(
                onTap: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "See more details",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: kPrimaryColor,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
