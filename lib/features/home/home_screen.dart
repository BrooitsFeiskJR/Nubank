// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank/mocks/mock_data.dart';
import 'package:nubank/widgets/balance_and_payment.dart';
import 'package:nubank/widgets/discover_widget.dart';

import 'package:nubank/widgets/header_home_screen.dart';
import 'package:nubank/widgets/info_credit_card_widget.dart';
import 'package:nubank/widgets/loan_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  final discoveryItems = MockDataBase.fetchAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(130, 10, 209, 1),
      body: SafeArea(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables

          children: [
            // Header
            HeaderHome(),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    // saldo
                    BalancePayment(),
                    Divider(color: Colors.grey[400]),
                    CreditCardInfo(),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(color: Colors.grey[400]),
                    AvailableLoan(),
                    Divider(color: Colors.grey[400]),
                    DiscoverSection(
                      items: discoveryItems,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
