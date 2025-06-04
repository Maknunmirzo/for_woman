import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';


class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.text,
     this.textColor=Colors.white,
    required this.containerColor,
    required this.callback,
    this.containerWidth = double.infinity,
    this.containerHeight = 43,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.borderColor =Colors.white,
    this.radius = 4,
  });

  final String text;
  final double fontSize;
  final double containerWidth, containerHeight;
  final FontWeight fontWeight;
  final Color textColor, containerColor;
  final Color borderColor;
  final double radius;

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        fixedSize: Size(containerWidth, containerHeight),
        backgroundColor: containerColor,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: borderColor, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: 1,
        ),
      ),
    );
  }
}
