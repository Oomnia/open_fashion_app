import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.svgpath,
    required this.text,
    required this.onTap,
    this.color = AppColors.primary,
  });

  final String? svgpath;
  final String text;
  final Color? color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        color: color,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgpath != null && svgpath!.isNotEmpty)
              SvgPicture.asset(svgpath!, color: Colors.white),
            if (svgpath != null && svgpath!.isNotEmpty) Gap(10),
            CustomText(
              text: text,
              size: 14,
              weight: FontWeight.w600,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
