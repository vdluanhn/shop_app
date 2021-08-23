import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/home/components/product_item.dart';
import 'package:shop_app/screens/product_detail/product_detail_screen.dart';

class ProductListBox extends StatelessWidget {
  const ProductListBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              demoProducts.length,
              (index) => ProductItem(
                  product: demoProducts[index],
                  onTap: () {
                    print("YOu clicked on item ${demoProducts[index].title}");
                    Navigator.pushNamed(context, ProductDetailScreen.routeName,
                        arguments: demoProducts[index]);
                  })),
        ],
      ),
    );
  }
}

// class ProductDetailArguments {
//   final Product product;

//   ProductDetailArguments({required this.product});
// }
