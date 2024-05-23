import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBodyText extends StatelessWidget {
  CustomBodyText(
      {super.key,
      required this.text,
      this.textsize = 18,
      this.textweight = FontWeight.w400,
      this.color = Colors.black});
  String text;
  double textsize;
  FontWeight textweight;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Play',
        fontSize: textsize,
        fontWeight: textweight,
        color: color,
      ),
    );
  }
}
