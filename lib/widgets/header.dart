import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CustomText(
            text: 'Checkout'.toUpperCase(),
            size: 20,
            weight: FontWeight.w400,
            color: AppColors.primary,
            spacing: 5,
            height: 2,
          ),
        ),
        Gap(5),
        SvgPicture.asset(
          'assets/svgs/line.svg',
          width: 190,
          color: AppColors.primary,
        ),
        Gap(20),
      ],
    );
  }
}
