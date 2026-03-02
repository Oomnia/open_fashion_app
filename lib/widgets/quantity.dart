import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_container.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class Quantity extends StatefulWidget {
  const Quantity({super.key, required this.onChanged});


final Function(int) onChanged;

  @override
  State<Quantity> createState() => _QuantityState();
}


class _QuantityState extends State<Quantity> {
  int number = 1;

  @override

  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          svgpath: 'assets/svgs/minus.svg',
          onPressed: () {
            if (number > 1) {
              setState(() {
                number--;
                widget.onChanged(number);
              });
            }
          },
        ),
        Gap(12),

        CustomText(
          text: number.toString(),
          size: 20,
          weight: FontWeight.w500,
          color: Color(0xff333333),
        ),
        Gap(12),

        CustomContainer(
          svgpath: 'assets/svgs/Plus.svg',
          onPressed: () {
            setState(() {
              number++;
                              widget.onChanged(number);

            });
          },
        ),
      ],
    );
  }
}
