import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_up/components/sign_up_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingDefault),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Column(
                children: [
                  Text(
                    "Register Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: getProportionateScreenHeight(28)),
                  ),
                  SizedBox(
                    height: kPaddingDefault,
                  ),
                  Text(
                    "Complete your details or continue\nwith social media",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    iconSrc: "assets/icons/google-icon.svg",
                    onPress: () {
                      print("You clicked GOOGLE");
                    },
                  ),
                  SocialCard(
                    iconSrc: "assets/icons/facebook-2.svg",
                    onPress: () {
                      print("You clicked FACEBOOK");
                    },
                  ),
                  SocialCard(iconSrc: "assets/icons/twitter.svg")
                ],
              ),
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
