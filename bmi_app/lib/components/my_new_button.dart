import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class MyNewButton extends StatelessWidget {
  final String buttonName;
  final Function onTap;

  MyNewButton({this.buttonName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(25),
        color: kBottomContainerColour,
        child: Center(
          child: Text(
            this.buttonName,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
