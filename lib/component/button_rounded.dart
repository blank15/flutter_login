import 'package:flutter/material.dart';
import 'package:flutter_example/constanta.dart';

class RoundedButton extends StatelessWidget {
  final Text text;
  final Color color,textColor;
  final Function pressed;
  const RoundedButton({
    Key key,
    this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.pressed
}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius:BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          color: color,
          onPressed: pressed,
          child:text
        ),
      ),
    );
  }
}
