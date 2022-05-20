import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback press;
  final String text;
  const DefaultButton({
    Key? key,
    required this.press,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FlatButton(
        height: getProportionateScreenHeight(56),
        onPressed: press,
        child: Text(text,style: TextStyle(color: Colors.white),),
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
