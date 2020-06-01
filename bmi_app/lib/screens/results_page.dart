import 'package:bmi/components/my_card.dart';
import 'package:bmi/components/my_new_button.dart';
import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String traduction;

  ResultsPage({this.bmi, this.result, this.traduction});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Your result',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Expanded(
              child: MyCard(
                color: kActiveCardColour,
                content: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        this.result.toUpperCase(),
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        this.bmi,
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        this.traduction,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MyNewButton(
              buttonName: 'RE-CALCULATE',
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
