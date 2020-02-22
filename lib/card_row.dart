import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  final List<Widget> cards;
  CardRow({@required this.cards});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: this.cards),
    );
  }
}