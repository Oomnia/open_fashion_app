import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key, required this.onTap, this.savedAddress});

 final void Function() onTap;
   final dynamic savedAddress;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "${savedAddress['firstName']} ${ savedAddress['lastName']}",
                  size: 18,
                  weight: FontWeight.w400,
                  color: Color(0xff1A1A1A),
                ),
                Gap(10),
                CustomText(
                  text: savedAddress['address'],
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff555555),
                ),
                Gap(10),
                CustomText(
                  text: savedAddress['city'],
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff555555),
                ),
                  Gap(10),
              CustomText(
                text:
                "(${savedAddress['phone']})"
                    .toUpperCase(),
                color: Color(0xff555555),
                size: 14, weight: FontWeight.w400,
              ),
              ],
            ),
            Spacer(),
            SvgPicture.asset('assets/svgs/Forward.svg', height: 24, width: 24),
          ],
        ),
      ),
    );
  }
}
