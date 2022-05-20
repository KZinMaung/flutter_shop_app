// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

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
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: SvgPicture.asset("assets/icons/Mail.svg")
            ),
          )
        ],
      ),
    );
  }
}
