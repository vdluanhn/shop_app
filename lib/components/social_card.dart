import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.iconSrc,
    this.onPress,
  }) : super(key: key);
  final String iconSrc;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      child: SvgPicture.asset(iconSrc),
      style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(10),
          backgroundColor: Colors.black12),
    );
  }
}
