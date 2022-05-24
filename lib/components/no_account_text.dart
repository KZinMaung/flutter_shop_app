import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
        style: TextStyle(fontSize:getProportionateScreenWidth(16)),
        ),
        Text("Sign Up",
        style: TextStyle(fontSize: getProportionateScreenWidth(16),color: kPrimaryColor),
        )
        
      ],
    );
  }
}