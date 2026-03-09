import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/screens/place_order_page.dart';
import 'package:open_fashion_app/widgets/cart_widget.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/header.dart';
import 'package:open_fashion_app/widgets/promo_section.dart';

class Checkout extends StatefulWidget {
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
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Header(text: 'Checkout',),
            CartWidget(
              imgpath: widget.imgpath,
              title: widget.title,
              subtitle: widget.subtitle,
              price: widget.price,
              qty: selectedQty,
              onQtyChanged: (v) {
                setState(() {
                  selectedQty = v;
                });
                selectedQty = v;
              },
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
                  text: 'Est. Total'.toUpperCase(),
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff333333),
                ),
                CustomText(
                  text: '\$ ${widget.price * selectedQty}',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xffDD8560),
                ),
              ],
            ),
            Gap(20),
            CustomButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceOrderPage(
                    imgpath: widget.imgpath,
                    title: widget.title,
                    subtitle: widget.subtitle,
                    price: widget.price,
                    qty: selectedQty,
                    total: widget.price * selectedQty,
                  ),
                ),
              ),
              text: 'Checkout'.toUpperCase(),
              svgpath: 'assets/svgs/shopping bag.svg',
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
