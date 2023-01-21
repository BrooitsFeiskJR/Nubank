import "package:flutter/material.dart";
import 'package:nubank/features/home/mocks/mock_data.dart';
import 'package:nubank/features/home/model/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final List<Options> optionsIcons = MockDataBase.fetchOptions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => {Navigator.pop(context)},
                    child: Icon(Icons.close, size: 35, color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(130, 10, 209, 1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.image_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Toninho",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Agência 0001 ● Conta 348200633-5 \n Banco 0278 ● Nu Pagamentos S.A. - Instituição de\n Pagamento.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[400],
                    height: 30,
                  ),
                  itemCount: optionsIcons.length,
                  itemBuilder: (context, index) {
                    return _setOption(
                        optionsIcons[index].icon, optionsIcons[index].option);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _setOption(IconData icon, String option) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 25,
              ),
              const SizedBox(width: 15),
              Text(
                option,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right_outlined,
            size: 28,
          )
        ],
      ),
    );
  }
}
