import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/components/custom_suffix_icon.dart';

class BuildTextFormField extends StatelessWidget {
  final String lableText;
  final String hintText;
  final String iconImage;
  final bool isSecurePwd;
  final TextInputType inputType;
  const BuildTextFormField({
    Key? key,
    required this.lableText,
    required this.hintText,
    required this.iconImage,
    this.isSecurePwd = false,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isSecurePwd,
      decoration: InputDecoration(
          labelText: lableText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: CustomSuffixIcon(
            image: iconImage,
          )),
    );
  }
}
