import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(155, 3, 252, 1),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.help_outline_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.mail_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Olá, Toninho",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
