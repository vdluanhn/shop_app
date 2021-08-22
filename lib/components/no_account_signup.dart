import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';

class NoAccountSignUp extends StatelessWidget {
  const NoAccountSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
