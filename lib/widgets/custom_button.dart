import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.svgpath, required this.text});

  final String? svgpath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgpath ?? " ", color: Colors.white),
          Gap(10),
          CustomText(
            text: text,
            size: 16,
            weight: FontWeight.w600,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
