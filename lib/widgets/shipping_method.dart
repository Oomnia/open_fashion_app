import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({
    super.key,
    required this.txt,
    required this.icon,
    required this.isfree,
    this.ontap,
  });

  final String txt;
  final IconData icon;
  final bool isfree;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),

        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            CustomText(
              text: txt,
              size: 16,
              weight: FontWeight.w400,
              color: Color(0xff555555),
            ),
            Spacer(),
            isfree
                ? CustomText(
                    text: "FREE",
                    color: Color(0xff555555),
                    size: 14,
                    weight: FontWeight.w400,
                  )
                : SizedBox.shrink(),
            Gap(15),

            Icon(icon, color: Color(0xff555555)),
          ],
        ),
      ),
    );
  }
}
