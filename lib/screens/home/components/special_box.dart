import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/screens/home/components/special_card_list_box.dart';

import '../../../size_config.dart';

class SpecialBox extends StatelessWidget {
  const SpecialBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Special for you",
          onTap: () {
            print("You clicked See more");
          },
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SpecialCardListBox()
      ],
    );
  }
}
