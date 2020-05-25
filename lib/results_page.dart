import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'calculator_master.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  final String bmiResult;
  final String resultText;
  final interpretation;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text('Results'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    "Your Result",
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kInferenceTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RECALCULATE',
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        )));
  }
}
