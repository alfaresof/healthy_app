import 'package:flutter/material.dart';

class TitleBlackText extends StatelessWidget {
  final String text;

  const TitleBlackText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
