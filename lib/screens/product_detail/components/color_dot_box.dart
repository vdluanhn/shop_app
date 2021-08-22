import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDotBox extends StatefulWidget {
  const ColorDotBox({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotBoxState createState() => _ColorDotBoxState();
}

class _ColorDotBoxState extends State<ColorDotBox> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
      child: Row(
        children: [
          ...List.generate(widget.product.colors.length,
              (index) => buildColorDotItem(index)),
        ],
      ),
    );
  }

  GestureDetector buildColorDotItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        padding: EdgeInsets.all(3),
        width: getProportionateScreenWidth(30),
        height: getProportionateScreenWidth(30),
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
                color: selectedIndex == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: DecoratedBox(
            decoration: BoxDecoration(
          color: widget.product.colors[index],
          shape: BoxShape.circle,
        )),
      ),
    );
  }
}
