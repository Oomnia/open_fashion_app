import 'package:flutter/material.dart';
import 'package:open_fashion_app/screens/home_page.dart';

void main() {
  runApp(const OpenFashionApp());
}

class OpenFashionApp extends StatelessWidget {
  const OpenFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );

   
  }
}
