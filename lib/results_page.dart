import 'package:flutter/material.dart';
import 'constants.dart';
import 'ui_card.dart';
import 'button.dart';

class ResultsPage extends StatelessWidget {
  String bmi;
  String result;
  String interpretation;

  ResultsPage({
    @required this.bmi,
    @required this.result,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            UICard(
              color: defaultCardColor,
              margin: outerMargin,
              borderRadius: cardBorderRadius,
              child: Padding(
                padding: const EdgeInsets.all(10.0 + 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      result,
                      style: TextStyle(
                          color: Color(0xFF21DE78),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      bmi,
                      style:
                          TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Normal BMI range:',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF858691),
                      ),
                    ),
                    Text(
                      '18,5 - 25 kg/m2',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Button(
                text: 'RE-CALCULATE YOUR BMI',
                margin: outerMargin - 2 * cardMargin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
