import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData iconData;

  MyButton({this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      fillColor: Color(0xDD4C4F5E),
      shape: CircleBorder(),
      elevation: 10,
      constraints: BoxConstraints.tightFor(height: 50, width: 50),
    );
  }
}
