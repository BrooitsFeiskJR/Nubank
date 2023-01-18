import 'package:flutter/material.dart';
import 'package:nubank/screens/home_screen.dart';

void main() => runApp(NubankApp());

class NubankApp extends StatelessWidget {
  const NubankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
