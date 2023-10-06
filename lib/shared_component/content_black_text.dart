import 'package:flutter/material.dart';

class ContentBlackText extends StatelessWidget {
  final String text;

  const ContentBlackText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
