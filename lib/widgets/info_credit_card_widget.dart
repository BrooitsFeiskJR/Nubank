// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditCardInfo extends StatelessWidget {
  const CreditCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 25,
        right: 25,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.inbox_outlined,
              size: 26,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Cartão de Crédito",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Icon(Icons.chevron_right_outlined),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Fatura atual",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "R\$ 1.094.80",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Limite disponível: R\$ 730,00",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              text: 'Limite adicional para boletos: ',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[500],
              ),
              children: const <TextSpan>[
                TextSpan(
                    text: 'R\$ 562,20',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(130, 10, 209, 1))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
