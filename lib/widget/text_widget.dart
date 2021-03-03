import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final bool isFontBold;
  final bool isCenter;

  TextWidget({@required this.text, @required this.textColor, this.isFontBold = false, this.isCenter = false});
  @override
  Widget build(BuildContext context) {
    return Text(
      this.text.toLowerCase(),
      textAlign: this.isCenter ? TextAlign.center : TextAlign.start,
      style: TextStyle(
          color: this.textColor,
          fontSize: 20.0,
          fontWeight: this.isFontBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
