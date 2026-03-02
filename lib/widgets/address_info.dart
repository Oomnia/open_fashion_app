import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/screens/add_adress_page.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: GestureDetector(
        onTap:  () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddAdressPage()),
              ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Iris Watson',
                  size: 18,
                  weight: FontWeight.w400,
                  color: Color(0xff1A1A1A),
                ),
                Gap(10),
                CustomText(
                  text: '606-3727 Ullamcorper. Street \nRoseville NH 11523',
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff555555),
                ),
                Gap(10),
                CustomText(
                  text: '(786) 713-8616',
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff555555),
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
