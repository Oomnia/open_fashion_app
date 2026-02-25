import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/cart_widget.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/header.dart';
import 'package:open_fashion_app/widgets/promo_section.dart';

class Checkout extends StatelessWidget {
  const Checkout({
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
    return Scaffold(
      appBar: CustomAppBar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Header(),
            CartWidget(
              imgpath: imgpath,
              title: title,
              subtitle: subtitle,
              price: price,
            ),
            Gap(20),

            Divider(color: Colors.grey[300], thickness: 1),
            Gap(20),

            PromoSection(),
            Gap(20),
            Divider(color: Colors.grey[300], thickness: 1),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Est. Total',
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff333333),
                ),
                CustomText(
                  text: '\$ ${240}',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xffDD8560),
                ),
              ],
            ),
            Gap(20),
            CustomButton(
              text: 'Checkout',
              svgpath: 'assets/svgs/shopping bag.svg',
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
