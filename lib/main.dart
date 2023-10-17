import 'package:ecommerce/view/constants/styles.dart';
import 'package:ecommerce/view/features/Home/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeStyle,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
