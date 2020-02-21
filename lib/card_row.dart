import 'package:flutter/material.dart';
import 'ui_card.dart';

class CardRow extends StatelessWidget {
  final List<UICard> cards;
  CardRow({@required this.cards});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: this.cards),
    );
  }
}