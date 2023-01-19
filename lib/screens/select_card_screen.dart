// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank/widgets/card_resume.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.close, size: 35, color: Colors.grey[500]),
                  // ignore: prefer_const_constructors
                  Text(
                    "Cartão Virtual",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.help_outline,
                    size: 32,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //Render Card
              CardResume(),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Número",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "5062 9878 1672 3108",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Copiar",
                      style: TextStyle(
                        color: Color.fromRGBO(130, 10, 209, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              renderInformationAboutCard("Nome", "Luiz Antonio C P"),
              SizedBox(
                height: 25,
              ),
              renderInformationAboutCard("Validade", "10/21"),
              SizedBox(
                height: 25,
              ),
              renderInformationAboutCard("CVV", "084"),
              SizedBox(
                height: 25,
              ),
              renderInformationAboutCard("Função", "Débito e crédito"),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      OptionsContainer(Icons.lock_outline, 25),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bloquear",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      OptionsContainer(Icons.settings_outlined, 25),
                      Text(
                        "Configurar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget renderInformationAboutCard(String keyTitle, String valueMessage) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyTitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(valueMessage,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
              ))
        ],
      ),
    );
  }

  Widget OptionsContainer(IconData icon, double? sizeIcon) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Icon(icon, size: sizeIcon),
    );
  }
}
