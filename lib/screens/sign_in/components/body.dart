// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:shop_app/components/no_account_text.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';
import 'package:shop_app/size_config.dart';

import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(28),
                      color: Colors.black),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height:SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height:SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    socialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    socialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




