import 'package:flutter/material.dart';
import 'package:shop_app/screens/carts/components/body.dart';

import 'components/checkout_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CheckoutCart(),
    );
  }
}
