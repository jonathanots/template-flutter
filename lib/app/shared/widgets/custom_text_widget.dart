import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;

  const CustomTextWidget({
    Key? key,
    this.title = "CustomTextWidget",
    this.text = "default",
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
