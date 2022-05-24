import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04,),
        Image.asset("assets/images/success.png",height: SizeConfig.screenHeight* 0.4,),
        SizedBox(height: SizeConfig.screenHeight * 0.08,),
        Text("Login Success",style: TextStyle(fontSize: getProportionateScreenWidth(28),fontWeight: FontWeight.bold,color: Colors.black),),
        Spacer(),
        SizedBox(child: DefaultButton(press: (){
          Navigator.pushReplacementNamed(context, SplashScreen.routeName);
        }, text: "Back To Home"),width: SizeConfig.screenWidth * 0.6,),
        Spacer()
      ],
    );
  }
}