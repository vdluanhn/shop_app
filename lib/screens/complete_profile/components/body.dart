import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/size_config.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPaddingDefault,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                "Complete profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(28),
                    color: Colors.black),
              ),
              SizedBox(
                height: kPaddingDefault,
              ),
              Text(
                "Complete your details or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              CompleteProfileForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              DefaultButton(
                  text: "Continue",
                  press: () {
                    Navigator.pushNamed(context, OtpScreen.routeName);
                  }),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                "By continuing your confirm that you agree\nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
