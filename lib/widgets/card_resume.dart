import 'package:flutter/material.dart';

class CardResume extends StatelessWidget {
  const CardResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 360,
      decoration: BoxDecoration(
        color: Color.fromRGBO(130, 10, 209, 1),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1yAl2fWc44Eo8YKekpCM7lFOiiEA8hAENWA&usqp=CAU",
                      width: 90,
                      height: 90,
                    ),
                    Text(
                      "Virtual",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text(
                    "platinum",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                left: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "*** 8623",
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/800px-Mastercard_2019_logo.svg.png",
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
