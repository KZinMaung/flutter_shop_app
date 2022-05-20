import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FlatButton(
        height: getProportionateScreenHeight(56),
        onPressed: () {},
        child: Text("Continue",style: TextStyle(color: Colors.white),),
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
