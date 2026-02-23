import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, required this.svgpath, required this.top});

  final String svgpath;
  final double top;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: SvgPicture.asset(svgpath),
    );
  }
}
