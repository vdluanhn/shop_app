import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Goi ham khoi tao cac thong so kich thuoc man hinh ngay khi app mo len
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
