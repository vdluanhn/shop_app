import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/icon_button_with_counter.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: SizeConfig.screenWidth! * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kSecondColor.withOpacity(0.1)),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenWidth(10))),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        IconButtonWithCounter(
            iconSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 0,
            onTap: () {
              print("You clicked icon shop");
            }),
        SizedBox(
          width: 10,
        ),
        IconButtonWithCounter(
          numOfItems: 5,
          iconSrc: "assets/icons/Bell.svg",
          onTap: () {
            print("you clicked bell icon");
          },
        )
      ],
    );
  }
}
