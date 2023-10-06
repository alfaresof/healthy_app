import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color? color;
  final double? width;

  const CircularButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
