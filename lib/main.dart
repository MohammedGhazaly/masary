import 'package:flutter/material.dart';
import 'package:masary/features/home_page/view/home_view.dart';
import 'package:masary/features/splash/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masary',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
