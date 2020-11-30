import 'package:flutter/material.dart';
import '../constanta.dart';

class TextFieldRounded extends StatelessWidget {
  final String hint;
  final Icon icon;
  final bool obscure;
  final Icon suffixIcon;
  final TextEditingController controller;

  const TextFieldRounded({
    Key key,
    this.hint,
    this.icon,
    this.obscure,
    this.suffixIcon,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29),
        ),
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            icon: icon,
            hintText: hint,
            border: InputBorder.none,
            suffixIcon: suffixIcon
          ),
          controller: controller,
        ),
    );
  }
}
