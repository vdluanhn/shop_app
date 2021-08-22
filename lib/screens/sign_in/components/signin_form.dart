import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_text_field.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email, password;
  late bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BuildTextFormField(
                  lableText: 'Email',
                  hintText: 'Enter your email',
                  iconImage: "assets/icons/Mail.svg",
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                BuildTextFormField(
                  lableText: 'Password',
                  hintText: 'Enter your password',
                  iconImage: "assets/icons/Lock.svg",
                  isSecurePwd: true,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 35,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              remember = !remember;
                            });
                          },
                          child: Row(
                            children: [
                              Checkbox(
                                  value: remember,
                                  activeColor: kPrimaryColor,
                                  onChanged: (value) {
                                    setState(() {
                                      remember = value ?? false;
                                    });
                                  }),
                              Text(
                                "Remember me",
                              ),
                            ],
                          )),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 35,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, ForgotPasswordScreen.routeName);
                        },
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            color: kTextLinkColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                FormError(
                  errors: errors,
                ),
              ],
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                print("Vua nhan tiep tuc dang nhap");
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ],
        ));
  }
}
