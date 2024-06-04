
import 'package:flutter/material.dart';

TextStyle mTextStyle21(Color textColor, FontWeight fontWeight) {
  return TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: fontWeight,
  );
}

TextStyle mTextStyle11({Color txtColor = Colors.black, FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    fontSize: 11,
    fontWeight: fontWeight,
    color: txtColor,
    fontStyle: FontStyle.italic,
  );
}
