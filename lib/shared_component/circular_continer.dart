import 'package:flutter/material.dart';

import '../config/colors.dart';

class CircularContiner extends StatelessWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final Function()? onTap;

  const CircularContiner(
      {Key? key,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.onTap,
      this.borderColor,
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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(1, 1),
                blurRadius: 20,
              ),
            ],
            color: color ?? AppColors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: borderColor ?? AppColors.strokeGreen,
              width: 2,
            )),
        child: child,
      ),
    );
  }
}
