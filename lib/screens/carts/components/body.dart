import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'cart_header.dart';
import 'cart_list_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
          child: Column(
            children: [
              CartHeader(),
              SizedBox(
                height: getProportionateScreenWidth(30),
              ),
              ListCartBox()
            ],
          ),
        ),
      ),
    );
  }
}
