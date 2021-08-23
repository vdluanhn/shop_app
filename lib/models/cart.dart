import 'package:flutter/material.dart';

import 'package:shop_app/models/product.dart';

class Cart {
  final Product product;
  final int numOfItems;
  Cart({
    required this.product,
    required this.numOfItems,
  });
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[1], numOfItems: 3),
  Cart(product: demoProducts[2], numOfItems: 8),
  Cart(product: demoProducts[3], numOfItems: 2)
];
