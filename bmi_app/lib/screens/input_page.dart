import 'dart:ffi';

import 'package:bmi/components/my_button.dart';
import 'package:bmi/components/my_card.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

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
                    color: kActiveCardColour,
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
                    color: kInactiveCardColour,
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
                    '180cm',
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
                          '60',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyButton(
                              iconData: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              iconData: FontAwesomeIcons.plus,
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
                          '20',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MyButton(
                              iconData: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              iconData: FontAwesomeIcons.plus,
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
        ],
      ),
    );
  }
}
