import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_textfield.dart';
import 'package:open_fashion_app/widgets/header.dart';

class AddAdressPage extends StatefulWidget {
  const AddAdressPage({super.key, this.editData});
  final dynamic editData;

  @override
  State<AddAdressPage> createState() => _AddAdressPageState();
}

class _AddAdressPageState extends State<AddAdressPage> {
  final firstNameController = TextEditingController();

  final lastNameController = TextEditingController();

  final addressController = TextEditingController();

  final cityController = TextEditingController();

  final stateController = TextEditingController();

  final zipCodeController = TextEditingController();

  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.editData != null) {
      firstNameController.text = widget.editData['firstName'] ?? "";
      lastNameController.text = widget.editData['lastName'] ?? "";
      addressController.text = widget.editData['address'] ?? "";
      cityController.text = widget.editData['city'] ?? "";
      stateController.text = widget.editData['state'] ?? "";
      zipCodeController.text = widget.editData['zipCode'] ?? "";
      phoneController.text = widget.editData['phone'] ?? "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CustomAppBar(isBlackk: false),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(text: 'Add shipping adress'),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          hintText: 'First name',
                          controller: firstNameController,
                        ),
                      ),
                      Gap(20),
                      Expanded(
                        child: CustomTextfield(
                          hintText: 'Last name',
                          controller: lastNameController,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  CustomTextfield(
                    hintText: 'Adress',
                    controller: addressController,
                  ),

                  CustomTextfield(hintText: 'City', controller: cityController),

                  Row(
                    children: [
                      Expanded(
                        child: CustomTextfield(
                          hintText: 'State',
                          controller: stateController,
                        ),
                      ),
                      Gap(20),
                      Expanded(
                        child: CustomTextfield(
                          hintText: 'ZIP code',
                          controller: zipCodeController,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),

                  CustomTextfield(
                    hintText: 'Phone number',
                    controller: phoneController,
                  ),
                  Gap(260),
                  CustomButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        final data = {
                          'firstName': firstNameController.text,
                          'lastName': lastNameController.text,
                          'address': addressController.text,
                          'city': cityController.text,
                          'state': stateController.text,
                          'zipCode': zipCodeController.text,
                          'phone': phoneController.text,
                        };
                        Navigator.pop(context, data);
                      } else {
                        return;
                      }
                    },
                    text: 'Add now'.toUpperCase(),
                  ),
                  Gap(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
