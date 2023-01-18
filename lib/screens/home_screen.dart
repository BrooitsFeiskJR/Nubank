// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank/widgets/balance_and_payment.dart';
import 'package:nubank/widgets/header_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(130, 10, 209, 1),
      body: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // Header
            HeaderHome(),
            // saldo
            BalancePayment(),
          ],
        ),
      ),
    );
  }
}
