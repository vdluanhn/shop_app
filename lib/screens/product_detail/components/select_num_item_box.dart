import 'package:flutter/material.dart';
import 'package:shop_app/components/button_icon_circle.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SelectNumItemBox extends StatefulWidget {
  const SelectNumItemBox({
    Key? key,
  }) : super(key: key);
  @override
  _SelectNumItemBoxState createState() => _SelectNumItemBoxState();
}

class _SelectNumItemBoxState extends State<SelectNumItemBox> {
  int numItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonCircleIconCustom(
          iconData: Icons.remove,
          backGround: Colors.grey.shade100,
          onPress: () {
            setState(() {
              if (numItem > 0) numItem -= 1;
            });
          },
        ),
        Container(
          width: getProportionateScreenWidth(40),
          height: getProportionateScreenWidth(35),
          child: Text(
            numItem.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: getProportionateScreenWidth(20)),
          ),
        ),
        ButtonCircleIconCustom(
          iconData: Icons.add,
          backGround: Colors.grey.shade100,
          onPress: () {
            setState(() {
              numItem += 1;
              print("so luong: " + numItem.toString());
            });
          },
        )
      ],
    );
  }
}

class ButtonIconCircleCustom extends StatelessWidget {
  const ButtonIconCircleCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        Icons.remove,
        color: Colors.grey,
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
        backgroundColor:
            MaterialStateProperty.all(Colors.grey.shade100), // <-- Button color
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed))
            return kPrimaryColor; // <-- Splash color
        }),
      ),
    );
  }
}
