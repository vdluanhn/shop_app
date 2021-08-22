import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/components/no_account_signup.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/components/signin_form.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraint) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kPaddingDefault),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(28),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Sign in with your email and password \nor continue with social media",
                      textAlign: TextAlign.center,
                    ),
                    SignInForm(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(
                          iconSrc: "assets/icons/google-icon.svg",
                          onPress: () {
                            print("hello cick ");
                          },
                        ),
                        SocialCard(
                          iconSrc: "assets/icons/facebook-2.svg",
                          onPress: () {
                            print("hello cick 1");
                          },
                        ),
                        SocialCard(
                          iconSrc: "assets/icons/twitter.svg",
                          onPress: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: NoAccountSignUp(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
