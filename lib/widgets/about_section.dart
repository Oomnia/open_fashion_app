import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Ionicons.logo_twitter, color: Colors.white),
            Gap(30),

            Icon(Ionicons.logo_instagram, color: Colors.white),
            Gap(30),

            Icon(Ionicons.logo_facebook, color: Colors.white),
          ],
        ),
        Gap(20),
        SvgPicture.asset('assets/svgs/line.svg', width: 190),
        Gap(20),

        CustomText(
          text:
              'support@openui.design \n      +60 825 876 \n08:00 - 22:00 - Everyday',
          size: 16,
          weight: FontWeight.w400,
          color: Colors.white,
        ),
        Gap(20),
        SvgPicture.asset('assets/svgs/line.svg', width: 190),
        Gap(20),
        CustomText(
          text: "About   Contact    Blog",
          size: 22,
          weight: FontWeight.w400,
          color: Colors.white,
          max: 3,
        ),
      ],
    );
  }
}
