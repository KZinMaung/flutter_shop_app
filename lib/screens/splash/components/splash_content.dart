import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class SplashContent extends StatelessWidget {
  final String? image;
  final String? text;
  const SplashContent({Key? key,  this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Spacer(),
          Text(
            "TOKOTO",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          Text(text!,textAlign: TextAlign.center,),
          Spacer(flex: 2),
          Image.asset(
            image!,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235),
          )
        ],
      ),
    );
  }
}
