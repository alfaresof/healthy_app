import 'package:flutter/material.dart';

class TitleBlackText extends StatelessWidget {
  final String text;
  final double? fontSize;

  const TitleBlackText({
    super.key,
    required this.text,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize ?? 25, fontWeight: FontWeight.bold),
    );
  }
}
