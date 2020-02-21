import 'package:flutter/material.dart';

const double iconSize = 65;
const double spacing = 10;
const double labelSize = 16;

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
            height: spacing,
          ),
          Text(
            this.label,
            style: TextStyle(
              fontSize: labelSize,
            ),
          ),
        ],
      ),
    );
  }
}
