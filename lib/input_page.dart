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
  int weight = 60;
  int age = 19;

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
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              // provide only theme properties to change below
                              activeTrackColor: Colors.white,
                              disabledActiveTrackColor: Colors.white,
                              thumbColor: sliderThumbColor,
                              overlayColor: sliderOverlayColor,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 24),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (newHeight) =>
                                  setState(() => height = newHeight.round()),
                            ),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'WEIGHT',
                                style: labelTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: numberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundMaterialButton(
                                    onPressed: () => setState(() => weight++),
                                    icon: Icons.add,
                                  ),
                                  RoundMaterialButton(
                                    onPressed: () => setState(() => weight--),
                                    icon: Icons.remove,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        UICard(
                          color: defaultCardColor,
                          margin: cardMargin,
                          borderRadius: cardBorderRadius,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style: labelTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: numberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundMaterialButton(
                                    onPressed: () => setState(() => age++),
                                    icon: Icons.add,
                                  ),
                                  RoundMaterialButton(
                                    onPressed: () => setState(() => age--),
                                    icon: Icons.remove,
                                  ),
                                ],
                              )
                            ],
                          ),
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

class RoundMaterialButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final Color color;

  const RoundMaterialButton({
    this.icon,
    this.onPressed,
    this.color = defaultMaterialButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      shape: CircleBorder(),
      fillColor: this.color,
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      child: Icon(
        this.icon,
      ),
    );
  }
}
