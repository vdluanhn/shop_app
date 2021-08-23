import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDetaiImage extends StatefulWidget {
  const ProductDetaiImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductDetaiImageState createState() => _ProductDetaiImageState();
}

class _ProductDetaiImageState extends State<ProductDetaiImage> {
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(240),
          child: AspectRatio(
              aspectRatio: 1.3,
              child: Image.asset(widget.product.images[indexSelected])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildSmallPreviewImage(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreviewImage(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexSelected = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(7),
        width: getProportionateScreenWidth(50),
        height: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: indexSelected == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
