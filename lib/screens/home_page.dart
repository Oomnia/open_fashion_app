import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/cover.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_positioned.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppBar(isBlackk: true),
      body: Stack(
        children: [
          CustomPositioned(
            svgpath: 'assets/svgs/10.svg',
            top: 10,
            left: 0,
            right: 0,
          ),
          CustomPositioned(svgpath: 'assets/svgs/October.svg', top: 40, left: 0,
            right: 0,),
          CustomPositioned(svgpath: 'assets/svgs/Collection.svg', top: 85 ,left: 0,
            right: 0,),
          SingleChildScrollView(child: Column(children: [Gap(120), Cover(),
          ])),
        ],
      ),
    );
  }
}
