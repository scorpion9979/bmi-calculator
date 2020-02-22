import 'package:flutter/material.dart';

class UICard extends StatelessWidget {
  final int color;
  final double margin;
  final double borderRadius;
  final Function onTap;
  final Widget child;
  UICard({
    @required this.color,
    this.margin = 0,
    this.borderRadius = 0,
    this.child,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: this.onTap,
        child: Container(
          child: child,
          margin: EdgeInsets.all(this.margin),
          decoration: BoxDecoration(
            color: Color(this.color),
            borderRadius: BorderRadius.circular(this.borderRadius),
          ),
        ),
      ),
    );
  }
}
