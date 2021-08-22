import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';

class FormError extends StatelessWidget {
  final List<String> errors;
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formErrorText(errorMsg: errors[index])));
  }

  Row formErrorText({String? errorMsg}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(15),
          width: getProportionateScreenWidth(15),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          errorMsg ?? "",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
