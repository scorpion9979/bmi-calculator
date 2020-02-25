import 'package:flutter/material.dart';
import 'constants.dart';

const int buttonColor = 0xFFEA1556;
const double buttonHeight = 65;

class Button extends StatelessWidget {
  final String text;
  final int color;
  final double height;
  final double margin;
  Button({
    @required this.text,
    this.color = buttonColor,
    this.height = buttonHeight,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(this.color),
      height: this.height,
      width: double.infinity,
      margin: EdgeInsetsDirectional.only(top: this.margin),
      padding: EdgeInsets.only(bottom: 5),
      child: Center(
        child: Text(
          this.text,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
