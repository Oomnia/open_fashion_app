import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/quantity.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({
    super.key,
    required this.imgpath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onQtyChanged,
    required this.qty,
  });

  final String imgpath;
  final String title;
  final String subtitle;
  final double price;
  final int qty;
  final Function(int) onQtyChanged;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  late int selectedQty;
  @override
  void initState() {
    selectedQty = 1;
    selectedQty = widget.qty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.imgpath, width: 130),
        Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),

            CustomText(
              text: widget.title.toUpperCase(),
              size: 14,
              weight: FontWeight.w400,
              color: Colors.black,
            ),
            Gap(10),

            SizedBox(
              width: size.width * 0.4,
              child: CustomText(
                text: widget.subtitle,
                size: 12,
                weight: FontWeight.w400,
                color: Color(0xff555555),
              ),
            ),
            Gap(30),
            Quantity(onChanged: widget.onQtyChanged),
            Gap(20),

            CustomText(
              text: '\$ ${widget.price}',
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
