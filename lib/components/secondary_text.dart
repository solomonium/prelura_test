import 'package:flutter/material.dart';

class SecondaryText extends StatelessWidget {
  final Color? color;
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const SecondaryText({
    super.key,
    this.color,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    // AppTheme theme = context.watch();
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.left,
      overflow: textOverflow,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: fontSize ?? 16.0,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontFamily: 'Satoshi'),
    );
  }
}
