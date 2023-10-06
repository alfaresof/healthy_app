import 'package:flutter/material.dart';

import '../config/colors.dart';

class CircularContiner extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget child;
  final Color? color;
  final Function()? onTap;

  const CircularContiner(
      {Key? key,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.onTap,
      required this.child,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: margin,
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: color ?? AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: child,
      ),
    );
  }
}
