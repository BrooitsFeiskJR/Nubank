// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close, size: 30, color: Colors.grey[500]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Meus cartões",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              // AQUI
              _renderInfoCard("Cartão físico", "*** 9172", false),

              const SizedBox(
                height: 55,
              ),
              _renderInfoCard("Cartão virtual", "*** 8623", true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderInfoCard(String title, String cardNumber, bool? container) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              children: [
                Icon(
                  Icons.inbox_outlined,
                  size: 32,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Luiz Antonio C Pereira",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      cardNumber,
                    ),
                  ],
                ),
              ],
            ),
            container == true
                ? Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Virtual"),
                      ),
                      Icon(Icons.chevron_right_outlined),
                    ],
                  )
                : Icon(Icons.chevron_right_outlined)
          ],
        ),
      ],
    );
  }
}
