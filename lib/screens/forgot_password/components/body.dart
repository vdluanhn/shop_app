import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/no_account_signup.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.04,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(28),
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.01,
                ),
                Text(
                  "Please enter your email and we will send \n you a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                BuildTextFormField(
                  lableText: "Email",
                  hintText: "Enter your email",
                  iconImage: "assets/icons/Mail.svg",
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.04,
                ),
                DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, OtpScreen.routeName);
                    }),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: NoAccountSignUp(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
