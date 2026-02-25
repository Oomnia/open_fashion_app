import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class PromoWidget extends StatelessWidget {
  const PromoWidget({
    super.key,
    required this.svgpath,
    required this.title,
    this.subtitle,
  });

  final String svgpath;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(20),

        SvgPicture.asset(svgpath, width: 28),
        Gap(20),
        Expanded(
          child: CustomText(
            text: title,
            size: 16,
            weight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        CustomText(
          text: subtitle ?? '',
          size: 14,
          weight: FontWeight.w400,
          color: Color(0xff555555),
        ),
        Gap(25),
      ],
    );
  }
}
