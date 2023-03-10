// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/features/cards/credit_card_screen.dart';

class CreditCardContainer extends StatelessWidget {
  const CreditCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyCreditCards(),
              ))
            },
            child: Container(
              height: 65,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.wallet_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Meus cartões",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
