import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  bool isFavourite, isPopular;

  Product(
      {required this.title,
      required this.description,
      required this.images,
      required this.colors,
      this.rating = 0.0,
      this.price = 0,
      this.isFavourite = false,
      this.isPopular = false});
}

List<Product> demoProducts = [
  Product(
      title: "Wireless Controller for PS4",
      description:
          "Row and Column are basic primitive widgets for horizontal and vertical layouts—these low-level widgets allow for maximum customization. Flutter also offers specialized, higher level widgets that might be sufficient for your needs",
      images: [
        "assets/images/ps4_console_white_1.png",
        "assets/images/ps4_console_white_2.png",
        "assets/images/ps4_console_white_3.png",
        "assets/images/ps4_console_white_4.png",
      ],
      colors: [Colors.black, Colors.white, Colors.green],
      rating: 69.96,
      price: 100.5,
      isFavourite: true,
      isPopular: true),
  Product(
      title: "Wireless Controller for PS4",
      description:
          "By default a non-Material app doesn’t include an AppBar, title, or background color. If you want these features in a non-Material app, you have to build them yourself",
      images: [
        "assets/images/Image Popular Product 2.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_3.png",
      ],
      colors: [Colors.black, Colors.white, Colors.green],
      rating: 69.96,
      price: 100.5,
      isFavourite: false,
      isPopular: true),
  Product(
      title: "Wireless Controller for PS4",
      description:
          "To create a row or column in Flutter, you add a list of children widgets to a Row or Column widget. In turn, each child can itself be a row or column, and so on",
      images: [
        "assets/images/Image Popular Product 3.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_3.png",
      ],
      colors: [Colors.black, Colors.white, Colors.green],
      rating: 69.96,
      price: 100.5,
      isFavourite: true,
      isPopular: true),
  Product(
      title: "Wireless Controller for PS4",
      description:
          "You control how a row or column aligns its children using the mainAxisAlignment and crossAxisAlignment properties. For a row, the main axis runs horizontally and the cross axis runs vertically.",
      images: [
        "assets/images/glap.png",
        "assets/images/ps4_console_blue_2.png",
        "assets/images/ps4_console_blue_3.png",
      ],
      colors: [Colors.black, Colors.white, Colors.green],
      rating: 69.96,
      price: 100.5,
      isFavourite: true,
      isPopular: true),
];
