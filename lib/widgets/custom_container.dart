import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.svgpath,
    required this.onPressed,
  });
  final String svgpath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 24,
        height: 24,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xffC4C4C4)),
        ),
        child: SvgPicture.asset(svgpath),
      ),
    );
  }
}
