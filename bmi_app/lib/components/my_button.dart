import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  MyButton({this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      child: Icon(iconData),
      fillColor: Color(0xDD4C4F5E),
      shape: CircleBorder(),
      elevation: 10,
      constraints: BoxConstraints.tightFor(height: 50, width: 50),
    );
  }
}
