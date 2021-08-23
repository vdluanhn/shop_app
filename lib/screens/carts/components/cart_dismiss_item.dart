import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/cart.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'cart_item.dart';

class CartIDismissibleItem extends StatelessWidget {
  const CartIDismissibleItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Dismissible(
        key: Key(demoCarts[index].product.id.toString()),
        direction: DismissDirection.endToStart,
        background: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kPaddingDefault * 1.5)),
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Spacer(),
              SvgPicture.asset(
                "assets/icons/Trash.svg",
                color: Colors.white,
              )
            ],
          ),
        ),
        child: CartItem(
          cart: demoCarts[index],
        ),
      ),
    );
  }
}
