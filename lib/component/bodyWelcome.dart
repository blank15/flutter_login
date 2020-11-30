import 'dart:ui';
import 'package:flutter_example/component/button_rounded.dart';
import 'package:flutter_example/constanta.dart';
import 'package:flutter_example/screen/login_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/component/background.dart';

class BodyWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.blue)),
              ),
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.width * 0.8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedButton(
                  text: Text("Login", style: TextStyle(color: Colors.white)),
                  pressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: RoundedButton(
                  text: Text("Sign Up"),
                  color: kPrimaryLightColor,
                  pressed: (){},
                ),)
            ]
        ));
  }
}
