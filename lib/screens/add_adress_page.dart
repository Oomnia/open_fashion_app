import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_textfield.dart';
import 'package:open_fashion_app/widgets/header.dart';

class AddAdressPage extends StatelessWidget {
  const AddAdressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(text: 'Add shipping adress'),
              Row(
                children: [
                  Expanded(child: CustomTextfield(hintText: 'First name')),
                  Gap(20),
                  Expanded(child: CustomTextfield(hintText: 'Last name')),
                ],
              ),
              Gap(20),
              CustomTextfield(hintText: 'Adress'),

              CustomTextfield(hintText: 'City'),

              Row(
                children: [
                  Expanded(child: CustomTextfield(hintText: 'State')),
                  Gap(20),
                  Expanded(child: CustomTextfield(hintText: 'ZIP code')),
                ],
              ),
              Gap(20),

              CustomTextfield(hintText: 'Phone number'),
              Gap(260),
              CustomButton(
                onTap: () => Navigator.pop(context),
                text: 'Add now'.toUpperCase(),
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
