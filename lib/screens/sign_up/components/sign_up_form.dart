import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildTextFormField(
            lableText: "Email",
            hintText: "Enter your email",
            inputType: TextInputType.emailAddress,
            iconImage: "assets/icons/Mail.svg"),
        SizedBox(
          height: kPaddingDefault,
        ),
        BuildTextFormField(
          lableText: "Password",
          hintText: "Enter your password",
          iconImage: "assets/icons/Lock.svg",
          isSecurePwd: true,
        ),
        SizedBox(
          height: kPaddingDefault,
        ),
        BuildTextFormField(
          lableText: "Confirm password",
          hintText: "Re-enter your password",
          iconImage: "assets/icons/Lock.svg",
          isSecurePwd: true,
        ),
        SizedBox(
          height: kPaddingDefault * 2,
        ),
        DefaultButton(
            text: "Continue",
            press: () {
              print("You clicked Continue");
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            }),
      ],
    );
  }
}
