import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.longPress,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final VoidCallback? longPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(54),
      child: ElevatedButton(
          onPressed: press,
          onLongPress: longPress,
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18))),
          child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenHeight(18),
              color: Colors.white,
            ),
          )),
    );
  }
}
