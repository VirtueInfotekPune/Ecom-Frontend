import 'package:flutter/material.dart';
import 'package:uispeed_grocery_shop/page/login.dart';
import 'package:uispeed_grocery_shop/page/phone.dart';
import 'page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
