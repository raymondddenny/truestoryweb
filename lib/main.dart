import 'package:flutter/material.dart';
import 'package:true_story/constants/colors.dart';
import 'package:true_story/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'True Story',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.primaryColor),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
