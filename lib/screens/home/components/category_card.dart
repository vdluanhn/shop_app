import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.iconStr,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String iconStr;
  final String text;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print("You clicked on item: $text");
              },
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kPrimaryColor.withOpacity(.15)),
                  child: SvgPicture.asset(iconStr),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
