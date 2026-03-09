import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(CupertinoIcons.clear),
                ),
              ),
              CustomText(
                text: 'Payment Success'.toUpperCase(),
                size: 18,
                weight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(20),
              SvgPicture.asset('assets/svgs/done.svg'),
              Gap(30),
              CustomText(
                text: 'Your payment was success',
                size: 18,
                weight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(10),
              CustomText(
                text: 'Payment ID 123456789',
                size: 15,
                weight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(20),
              SvgPicture.asset(
                'assets/svgs/line.svg',
                width: 190,
                color: AppColors.primary,
              ),
              Gap(20),
              CustomText(
                text: 'Rate your purchase',
                size: 18,
                weight: FontWeight.w400,
                color: AppColors.primary,
              ),
              Gap(30),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/Disappointed.svg',
                    color: Color(0xffCE9155),
                  ),
                  Gap(20),
                  SvgPicture.asset(
                    'assets/svgs/Happy.svg',
                    color: Color(0xffCE9155),
                  ),
                  Gap(20),
                  SvgPicture.asset(
                    'assets/svgs/In Love.svg',
                    color: Color(0xffCE9155),
                  ),
                ],
              ),
              Gap(50),
    
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Submit'.toUpperCase(),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Gap(5),
                  Expanded(
                    child: CustomButton(
                      text: 'Back to home'.toUpperCase(),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}