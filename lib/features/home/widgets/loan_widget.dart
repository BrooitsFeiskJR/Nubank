// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvailableLoan extends StatelessWidget {
  const AvailableLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Empréstimo",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.chevron_right_outlined),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          _renderText(
            "Valor disponível de até",
          ),
          SizedBox(
            height: 6,
          ),
          _renderText("R\$ 40.000,00"),
          SizedBox(
            height: 15,
          ),
          Divider(color: Colors.grey[400]),
          SizedBox(
            height: 15,
          ),
          Text(
            "Acompanhe também",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 380,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            // ignore: prefer_const_literals_to_create_immutables
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              // ignore: prefer_const_literals_to_create_immutables
              child: Row(children: [
                Icon(Icons.currency_exchange_outlined),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Assistente de pagamentos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderText(String message) {
    return Text(
      message,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 16,
      ),
    );
  }
}
