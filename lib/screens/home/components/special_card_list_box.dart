import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/special_card.dart';

class SpecialCardListBox extends StatelessWidget {
  const SpecialCardListBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> specialItems = [
      {
        "category": "Smart phone",
        "numOfBrands": 18,
        "image": "assets/images/Image Banner 2.png"
      },
      {
        "category": "Fashion",
        "numOfBrands": 24,
        "image": "assets/images/Image Banner 3.png"
      },
      {
        "category": "Computer",
        "numOfBrands": 30,
        "image": "assets/images/Image Popular Product 1.png"
      }
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...List.generate(
            specialItems.length,
            (index) => SpecialCard(
                category: specialItems[index]["category"],
                image: specialItems[index]["image"],
                numOfBrands: specialItems[index]["numOfBrands"],
                onTap: () {
                  print(
                      "You clicked on item: ${specialItems[index]["category"]}");
                })),
      ]),
    );
  }
}
