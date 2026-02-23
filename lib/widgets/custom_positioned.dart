import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, required this.svgpath,  this.top, this.left , this.bottom , this.right });

  final String svgpath;
  final double ? top;
  final double ?left;
  final double ?bottom;
  final double ?right;

      
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: SvgPicture.asset(svgpath),
    );
  }
}
