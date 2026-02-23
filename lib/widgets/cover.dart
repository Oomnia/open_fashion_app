import 'package:flutter/material.dart';
import 'package:open_fashion_app/widgets/custom_positioned.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/products/product1.png'),
        CustomPositioned(svgpath: 'assets/svgs/11.svg', bottom: 10, right: -15),
      ],
    );
  }
}
