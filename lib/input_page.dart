import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const double margin = 8;
const double buttonMargin = 12;
const Color color = Color(0xFF1D1F33);
const double borderRadius = 10;

class _InputPageState extends State<InputPage> {
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
            Container(
              color: Color(0xFFEA1556),
              height: 60,
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(top: buttonMargin),
              child: Center(
                child: Text(
                  'CALCULATE YOUR BMI',
                ),
              ),
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
