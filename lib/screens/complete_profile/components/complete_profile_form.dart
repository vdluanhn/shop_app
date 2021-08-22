import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_field.dart';

import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        BuildTextFormField(
            lableText: "First name",
            hintText: "Enter your first name",
            iconImage: "assets/icons/User Icon.svg"),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        BuildTextFormField(
            lableText: "Last name",
            hintText: "Enter your last name",
            iconImage: "assets/icons/User Icon.svg"),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        BuildTextFormField(
          lableText: "Phone number",
          hintText: "Enter your phone number",
          iconImage: "assets/icons/Phone.svg",
          inputType: TextInputType.phone,
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        BuildTextFormField(
            lableText: "Address",
            hintText: "Enter your address",
            iconImage: "assets/icons/Location point.svg"),
      ],
    );
  }
}
