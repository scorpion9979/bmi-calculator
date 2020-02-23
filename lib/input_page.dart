import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ui_card.dart';
import 'card_row.dart';
import 'card_icon.dart';
import 'button.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  InputPage()
      : assert(outerMargin - 2 * cardMargin >= 0, 'InputPage: invalid margin');
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CardRow(
                      cards: <Widget>[
                        UICard(
                          color: selectedGender == Gender.male
                              ? activeCardColor
                              : inactiveCardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                          onTap: () =>
                              setState(() => selectedGender = Gender.male),
                          child: CardIcon(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                        UICard(
                          color: selectedGender == Gender.female
                              ? activeCardColor
                              : inactiveCardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                          onTap: () =>
                              setState(() => selectedGender = Gender.female),
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
                      color: defaultCardColor,
                      margin: cardMargin,
                      borderRadius: cardBorderRadius,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: numberTextStyle,
                              ),
                              Text(
                                'cm',
                                style: labelTextStyle,
                              ),
                            ],
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
                            activeColor: Color(0xFFEA1556),
                            inactiveColor: Color(0xFF888895),
                            onChanged: (newHeight) =>
                                setState(() => height = newHeight.round()),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: outerMargin,
                    ),
                    CardRow(
                      cards: <Widget>[
                        UICard(
                          color: defaultCardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                        ),
                        UICard(
                          color: defaultCardColor,
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
