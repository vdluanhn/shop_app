import 'package:flutter/material.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Welcome to Tokoto,\n Let's shop!",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"] ?? "",
                    text: splashData[index]['text'] ?? "",
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(kPaddingDefault)),
                  child: Column(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      DefaultButton(
                        text: "Continue",
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(3)),
    );
  }
}
