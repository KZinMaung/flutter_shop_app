import 'package:flutter/material.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/constants.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
    String? email;
   String? password;
  bool? remember = true;

  void addError(String err) {
    if (!errors.contains(err)) {
      setState(() {
        errors.add(err);
      });
    }
  }

  void removeError(String err) {
    if (errors.contains(err)) {
      setState(() {
        errors.remove(err);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(value: remember, onChanged: (value){
                setState(() {
                  remember = value;
                });
              },
              activeColor: kPrimaryColor,),
              Text("Remember me"),
              Spacer(),
              Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline),),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          FormError(
            errors: errors,
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          
          DefaultButton(
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              text: "Continue"),
          
          
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
          label: Text("Password"),
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: customSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
      validator: (value) {
        if (value!.isEmpty) {
          addError(kPassNullError);
        } else if (value.length < 8) {
          addError(kShortPassError);
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kPassNullError);
        } else if (value.length >= 8) {
          removeError(kShortPassError);
        }
        return null;
      },
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          label: Text("Email"),
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: customSuffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
      validator: (value) {
        if (value!.isEmpty) {
          addError(kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(kInvalidEmailError);
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(kInvalidEmailError);
        }
        return null;
      },
    );
  }
 
}
