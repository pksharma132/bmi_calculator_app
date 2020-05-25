import 'package:bmi_app/results_page.dart';
import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_button.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'calculator_master.dart';

const cardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender { male, female }
int selectedWeight = 40;
int selectedAge = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THE BMI APP"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/about me');
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.male,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.female,
                    text: 'FEMALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ))
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            colour: inactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Height',
                  style: kLabelFontStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kSecondRowFontStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelFontStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98)),
                  child: Slider(
                    value: height.toDouble(),
                    min: 0.0,
                    max: 300.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'WEIGHT',
                          style: kLabelFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              selectedWeight.toString(),
                              style: kSecondRowFontStyle,
                            ),
                            Text(
                              'Kg',
                              style: kLabelFontStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWeight -= 1;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minusCircle,
                                size: 50.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWeight += 1;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plusCircle,
                                size: 50.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColor,
                    cardChild: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'AGE',
                          style: kLabelFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              selectedAge.toString(),
                              style: kSecondRowFontStyle,
                            ),
                            Text(
                              'Yrs',
                              style: kLabelFontStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedAge -= 1;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minusCircle,
                                size: 50.0,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedAge += 1;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plusCircle,
                                size: 50.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            buttonTitle: "CALCULATE",
            onTap: () {
              Calculator calc =
                  Calculator(height: height, weight: selectedWeight);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: calc.CalculateBMI(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )));
            },
          )
        ],
      ),
    );
  }
}
