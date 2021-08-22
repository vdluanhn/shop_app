import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length > 0) {
      focusNode?.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              autofocus: true,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              style: TextStyle(fontSize: 24),
              decoration: otpInputDecoration,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              obscureText: true,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
