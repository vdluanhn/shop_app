import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/product_list_box.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProductBox extends StatelessWidget {
  const PopularProductBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular Product",
          onTap: () {
            print("You clicked on See more in Popular Product box");
          },
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        ProductListBox()
      ],
    );
  }
}
