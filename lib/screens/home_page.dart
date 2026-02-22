import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
appBar: CustomAppBar(isBlackk: true),    );
  }
}
