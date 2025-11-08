import 'package:flutter/material.dart';
import 'package:xpense_flutter_app/pages/home.dart';
import 'package:xpense_flutter_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'xpense',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
        useMaterial3: false,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      ),
      home: Home(),
    );
  }
}
