import 'package:flutter/material.dart';
import 'constants.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  CardIcon({@required this.icon, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            this.icon,
            size: iconSize,
          ),
          SizedBox(
            height: labelIconSpacing,
          ),
          Text(
            this.label,
            style: labelTextStyle,
          ),
        ],
      ),
    );
  }
}
