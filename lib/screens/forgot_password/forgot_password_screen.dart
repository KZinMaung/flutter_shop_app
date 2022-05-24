import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static var routeName = "/forgot-password";
  const ForgotPasswordScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}