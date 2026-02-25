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
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
