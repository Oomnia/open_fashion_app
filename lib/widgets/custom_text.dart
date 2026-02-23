import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.size, required this.weight, required this.color,  this.max,  this.height,  this.spacing});
final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final int ?max;
  final double ? height;
  final double? spacing;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: spacing,
      fontFamily: 'TenorSans',
    ),maxLines: max,overflow: TextOverflow.ellipsis,);
  }
}
