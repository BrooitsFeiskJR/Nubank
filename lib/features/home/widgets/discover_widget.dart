import 'package:flutter/material.dart';
import 'package:nubank/model/discover_more_options.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({
    super.key,
    required this.items,
  });
  final List<Discovery> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Descubra mais",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 400,
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    _containerAndPhoto(
                      items[index].title,
                      items[index].description,
                      items[index].urlImage,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _containerAndPhoto(
    String title,
    String message,
    String url,
  ) {
    return Column(
      children: [
        Container(
          height: 130,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage(url),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 150,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  message,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 157, 16, 252),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Conhecer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
