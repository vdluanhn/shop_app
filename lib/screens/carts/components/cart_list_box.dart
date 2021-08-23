import 'package:flutter/material.dart';
import 'package:shop_app/models/cart.dart';

import 'cart_dismiss_item.dart';

class ListCartBox extends StatelessWidget {
  const ListCartBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
            demoCarts.length,
            (index) => CartIDismissibleItem(
                  index: index,
                ))
      ],
    );
  }
}
