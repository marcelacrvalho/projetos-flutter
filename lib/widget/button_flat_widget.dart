import 'package:flutter/material.dart';

class ButtonFlatWidget extends StatelessWidget {

  final Function onTap;
  final String buttonText;
  final Color buttonColor;

  ButtonFlatWidget({@required this.onTap, @required this.buttonText, @required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: this.onTap,
      child: Text(
        this.buttonText,
        style: TextStyle(
          color: this.buttonColor,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
