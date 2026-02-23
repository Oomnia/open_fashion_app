import 'package:flutter/material.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class CopyRightSectin extends StatelessWidget {
  const CopyRightSectin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffC4C4C4),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, top: 10),
        child: Center(
          child: CustomText(
            color: Color(0xff555555),
            weight: FontWeight.w400,
            size: 12,
            max: 3,
            height: 2.5,
            text: "Copyright© OpenUI All Rights Reserved.",
          ),
        ),
      ),
    );
  }
}
