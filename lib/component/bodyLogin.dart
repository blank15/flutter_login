import 'package:flutter/material.dart';
import 'package:flutter_example/component/TextField_rounded.dart';
import 'package:flutter_example/component/background.dart';
import 'package:flutter_example/component/button_rounded.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constanta.dart';

class BodyLogin extends StatelessWidget {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(vertical: 38.0),
                child: SvgPicture.asset(
                  "assets/icons/login.svg", height: size.width * 0.8,)),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.blue)),
            ),
            TextFieldRounded(
              hint: "Your Email address",
              icon: Icon(Icons.person),
              obscure: false,
              controller: emailController,
            ),
            TextFieldRounded(
              hint: "password",
              icon: Icon(Icons.lock),
              obscure: true,
              suffixIcon: Icon(Icons.visibility),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                text: Text("Login", style: TextStyle(color: Colors.white)),
                pressed: () {
                  return showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      content: Text("Selamat Datang ${emailController.text}"),
                    );
                  });
                },
              ),
            ),
          ],
        ));
  }
}
