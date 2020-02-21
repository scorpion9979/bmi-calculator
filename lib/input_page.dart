import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static const double margin = 8;
  static const Color color = Color(0xFF1D1F33);
  static const double borderRadius = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CardRow(
              cards: [
                Card(
                  margin: margin,
                  color: color,
                  borderRadius: borderRadius,
                ),
                Card(
                  margin: margin,
                  color: color,
                  borderRadius: borderRadius,
                ),
              ],
            ),
            Card(
              margin: margin,
              color: color,
              borderRadius: borderRadius,
            ),
            CardRow(
              cards: [
                Card(
                  margin: margin,
                  color: color,
                  borderRadius: borderRadius,
                ),
                Card(
                  margin: margin,
                  color: color,
                  borderRadius: borderRadius,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final double margin;
  final Color color;
  final double borderRadius;
  Card(
      {@required this.margin,
      @required this.color,
      @required this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(this.margin),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(this.borderRadius),
        ),
      ),
    );
  }
}

class CardRow extends StatelessWidget {
  final List<Card> cards;
  CardRow({@required this.cards});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(children: this.cards),
    );
  }
}
