import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/promo_widget.dart';

class PromoSection extends StatelessWidget {
  const PromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PromoWidget(
          svgpath: 'assets/svgs/Voucher.svg',
          title: 'Add promo code',
        ),
        Gap(20),

        Divider(color: Colors.grey[300], thickness: 1),
        Gap(20),
        PromoWidget(
          svgpath: 'assets/svgs/Door to Door Delivery.svg',
          title: 'Delivery',
          subtitle: 'Free',
        ),
      ],
    );
  }
}
