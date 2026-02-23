import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/about_section.dart';
import 'package:open_fashion_app/widgets/copy_right_sectin.dart';
import 'package:open_fashion_app/widgets/cover.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_positioned.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/item_list_view.dart';
import 'package:open_fashion_app/widgets/products_list_view.dart';

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
          CustomPositioned(
            svgpath: 'assets/svgs/October.svg',
            top: 40,
            left: 0,
            right: 0,
          ),
          CustomPositioned(
            svgpath: 'assets/svgs/Collection.svg',
            top: 85,
            left: 0,
            right: 0,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Gap(120),
                  Cover(),
                  Gap(20),
                  ProductsListView(),
                  CustomText(
                    text: 'You may also like'.toUpperCase(),
                    size: 24,
                    weight: FontWeight.w400,
                    color: Color(0xffFCFCFC),
                  ),
                  Gap(20),
                  SvgPicture.asset('assets/svgs/line.svg', width: 190),
                  Gap(20),
                  ItemListView(),
                  AboutSection(),
                  Gap(20),

                 CopyRightSectin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
