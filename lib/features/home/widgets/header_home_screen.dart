// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank/features/home/controller/home_controller.dart';
import 'package:nubank/features/profile/profile_screen.dart';
import 'package:provider/provider.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
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
                  color: Color.fromARGB(255, 157, 16, 252),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => ProfileScreen())));
                  },
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  GestureDetector(
                      onTap: () {
                        controller.changeStateHome();
                      },
                      child: _iconsHeader(Icons.visibility_off_outlined)),
                  const SizedBox(
                    width: 20,
                  ),
                  _iconsHeader(Icons.help_outline),
                  const SizedBox(
                    width: 20,
                  ),
                  _iconsHeader(Icons.mail_outline),
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

  Widget _iconsHeader(IconData icon) {
    return Icon(
      icon,
      color: Colors.white,
      size: 25,
    );
  }
}
