// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/widgets/button_credit_carts_widget.dart';

class BalancePayment extends StatelessWidget {
  const BalancePayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Conta",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "R\$ 20.379,98",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 42,
                ),
                child: Icon(Icons.chevron_right_outlined),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 1.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _paymentMethod(Icons.pix_outlined, "Pix"),
                SizedBox(
                  width: 3,
                ),
                _paymentMethod(FontAwesomeIcons.barcode, "Pagar"),
                SizedBox(
                  width: 3,
                ),
                _paymentMethod(
                    FontAwesomeIcons.moneyBillTransfer, "Transferir"),
                SizedBox(
                  width: 3,
                ),
                _paymentMethod(Icons.payment_outlined, "Depositar"),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          CreditCardContainer(),
        ],
      ),
    );
  }

  Widget _paymentMethod(
    IconData icon,
    String methodLabel,
  ) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.black,
            size: 24,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          methodLabel,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
