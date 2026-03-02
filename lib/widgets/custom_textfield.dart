import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,

        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD4D4D4)),
        ),
      ),
    );
  }
}
