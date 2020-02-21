import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage()
      : assert(outerMargin - 2 * cardMargin >= 0, 'InputPage: invalid margin');
  @override
  _InputPageState createState() => _InputPageState();
}

const double outerMargin = 20;
const double cardMargin = 3;
const int cardColor = 0xFF1D1F33;
const double cardBorderRadius = 4;

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
            Expanded(
              child: Container(
                margin: EdgeInsets.all(outerMargin),
                child: Column(
                  children: <Widget>[
                    CardRow(
                      cards: [
                        Card(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                        Card(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                      ],
                    ),
                    Container(
                      height: outerMargin,
                    ),
                    Card(
                      color: cardColor,
                      margin: cardMargin,
                      borderRadius: cardBorderRadius,
                    ),
                    Container(
                      height: outerMargin,
                    ),
                    CardRow(
                      cards: [
                        Card(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                        Card(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Button(
              text: 'CALCULATE YOUR BMI',
              margin: outerMargin - 2 * cardMargin,
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final int color;
  final double height;
  final double margin;
  Button({
    @required this.text,
    this.color = 0xFFEA1556,
    this.height = 60,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(this.color),
      height: this.height,
      width: double.infinity,
      margin: EdgeInsetsDirectional.only(top: this.margin),
      child: Center(
        child: Text(this.text),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final int color;
  final double margin;
  final double borderRadius;
  Card({
    @required this.color,
    this.margin = 0,
    this.borderRadius = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(this.margin),
        decoration: BoxDecoration(
          color: Color(this.color),
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
