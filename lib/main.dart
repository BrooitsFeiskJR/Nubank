import 'package:flutter/material.dart';
import 'package:nubank/screens/home_screen.dart';

void main() => runApp(const NubankApp());

class NubankApp extends StatelessWidget {
  const NubankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
