import 'dart:ffi';

import 'package:bmi/components/my_button.dart';
import 'package:bmi/components/my_new_button.dart';
import 'package:bmi/components/my_card.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/models/bmi_calculator.dart';
import 'package:bmi/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Sex { male, famale }

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;
  Sex sex = Sex.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    onTap: () => setState(() => this.sex = Sex.male),
                    color: this.sex == Sex.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    onTap: () => setState(() => this.sex = Sex.famale),
                    color: this.sex == Sex.famale
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'FAMALE',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyCard(
              color: kActiveCardColour,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '$height cm',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Slider(
                    value: this.height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: kBottomContainerColour,
                    onChanged: (newHeight) {
                      setState(() {
                        this.height = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyCard(
                    color: kActiveCardColour,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyButton(
                              iconData: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  this.weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              iconData: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  this.weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyCard(
                    color: kActiveCardColour,
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyButton(
                              iconData: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  this.age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              iconData: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  this.age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyNewButton(
            buttonName: 'CALCULATE',
            onTap: () {
              var calculator =
                  BmiCalculator(height: this.height, weight: this.weight);
              var bmi = calculator.calculate();
              var result = calculator.getResultado();
              var traduction = calculator.getInterpretacion();

              print(bmi);
              print(result);
              print(traduction);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(
                          bmi: bmi,
                          result: result,
                          traduction: traduction,
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
