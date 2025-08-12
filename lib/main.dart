import 'package:flutter/material.dart';
import 'package:untitled/presentation/splash/pages/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: const SplashPage());
  }
}
