import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CheckoutCart extends StatelessWidget {
  const CheckoutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      height: getProportionateScreenWidth(150),
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.3)),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(kPaddingDefault),
        child: Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(SizeConfig.screenWidth! * 0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: getProportionateScreenWidth(50),
                    height: getProportionateScreenWidth(50),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                  ),
                  Text(
                    "Total:",
                    style: TextStyle(fontSize: getProportionateScreenWidth(18)),
                  ),
                  Text(
                    "\$335",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Add voucher code",
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: getProportionateScreenWidth(15),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: kPaddingDefault, left: kPaddingDefault),
                    child: DefaultButton(text: "Check out", press: () {}),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
