import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'otp_form.dart';

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
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kPaddingDefault, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(30),
                          ),
                          Text(
                            "OTP Verification",
                            style: TextStyle(
                                fontSize: getProportionateScreenHeight(28),
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Column(
                            children: [
                              Text("We sent your code to 098****325"),
                              buildTimer(),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      OtpForm(),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      DefaultButton(text: "Continue", press: () {}),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      GestureDetector(
                          onTap: () {
                            print("You clicked on Resend OTP");
                          },
                          child: Text(
                            "Resend OTP code",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This code will expired in ",
          textAlign: TextAlign.center,
        ),
        TweenAnimationBuilder(
          tween: Tween(
            begin: 30.0,
            end: 0,
          ),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${double.parse(value.toString()).floor().toString().padLeft(2, "0")}",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          onEnd: () {
            print("OTP het han nhap");
          },
        )
      ],
    );
  }
}
