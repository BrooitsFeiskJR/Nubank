// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
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
                  _IconsHeader(Icons.visibility_off_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  _IconsHeader(Icons.help_outline),
                  const SizedBox(
                    width: 20,
                  ),
                  _IconsHeader(Icons.mail_outline),
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

  Widget _IconsHeader(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 25,
    );
  }
}
