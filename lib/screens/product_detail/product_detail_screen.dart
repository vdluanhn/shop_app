import 'package:flutter/material.dart';

import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_detail/components/body.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/product_detail";
  //const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product arguments =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        product: arguments,
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;
  ProductDetailArguments({
    required this.product,
  });
}
