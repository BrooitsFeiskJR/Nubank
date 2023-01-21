import 'package:flutter/material.dart';
import 'package:nubank/features/home/controller/home_controller.dart';
import 'package:nubank/features/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const NubankApp());

class NubankApp extends StatelessWidget {
  const NubankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeController())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
