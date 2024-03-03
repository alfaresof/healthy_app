import 'package:flutter/material.dart';
import 'package:healthy_app/config/colors.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color? color;
  final Color? textColor;
  final double? width;

  const CircularButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.textColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 200,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: color ?? AppColors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
