import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/quantity.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    required this.imgpath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String imgpath;
  final String title;

  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imgpath, width: 130),
        Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),

            CustomText(
              text: title.toUpperCase(),
              size: 14,
              weight: FontWeight.w400,
              color: Colors.black,
            ),
            Gap(10),

            SizedBox(
              width: size.width * 0.4,
              child: CustomText(
                text: subtitle,
                size: 12,
                weight: FontWeight.w400,
                color: Color(0xff555555),
              ),
            ),
            Gap(30),
            Quantity(),
            Gap(20),

            CustomText(
              text: '\$ $price',
              size: 20,
              weight: FontWeight.w500,
              color: Color(0xffDD8560),
            ),
          ],
        ),
      ],
    );
  }
}
