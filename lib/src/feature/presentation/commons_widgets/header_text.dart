import 'package:flutter/material.dart';

Widget headerText( String text, Color color, FontWeight fontWeight, double fontSize) {
  return  Text(text, style: 
    TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize
    )
  );
}