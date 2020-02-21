import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ui_card.dart';
import 'card_row.dart';
import 'card_icon.dart';
import 'button.dart';

class InputPage extends StatefulWidget {
  InputPage()
      : assert(outerMargin - 2 * cardMargin >= 0, 'InputPage: invalid margin');
  @override
  _InputPageState createState() => _InputPageState();
}

const double outerMargin = 15;
const double cardMargin = 5;
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
                margin: EdgeInsets.symmetric(
                  horizontal: outerMargin,
                  vertical: outerMargin / 2,
                ),
                child: Column(
                  children: <Widget>[
                    CardRow(
                      cards: [
                        UICard(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                          child: CardIcon(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                        UICard(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                          child: CardIcon(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: outerMargin,
                    ),
                    UICard(
                      color: cardColor,
                      margin: cardMargin,
                      borderRadius: cardBorderRadius,
                    ),
                    SizedBox(
                      height: outerMargin,
                    ),
                    CardRow(
                      cards: [
                        UICard(
                          color: cardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                        UICard(
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

