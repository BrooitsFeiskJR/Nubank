import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/model/discover_more_options.dart';
import 'package:nubank/model/profile_options.dart';

mixin MockDataBase implements Discovery {
  static final discoveryitems = [
    Discovery(
      title: "Nubank Celular Seguro",
      description: "100% cobertura, 0% estresse. \n Simule agora mesmo.",
      urlImage:
          "https://images.pexels.com/photos/4909462/pexels-photo-4909462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    Discovery(
        title: "Seguro de vida",
        description:
            "Cuide de quem você ama de \n de um jeito simples e facíl.",
        urlImage:
            "https://images.pexels.com/photos/3783255/pexels-photo-3783255.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  ];

  static final optionsItems = [
    Options(icon: Icons.favorite_outline, option: "Seguro"),
    Options(icon: Icons.notification_add_outlined, option: "Notificações"),
    Options(icon: Icons.help_outline, option: "Me ajuda"),
    Options(icon: Icons.person_outline, option: "Editar dados do Perfil"),
    Options(icon: Icons.shield_outlined, option: "Segurança"),
    Options(icon: Icons.account_balance_outlined, option: "Open Finance"),
    Options(icon: Icons.pix_outlined, option: "Configurar chaves pix"),
    Options(icon: Icons.store_outlined, option: "Pedir conta PJ"),
    Options(icon: Icons.money_outlined, option: "Configurar conta"),
    Options(icon: Icons.inbox_outlined, option: "Configurar cartão"),
    Options(
        icon: Icons.signal_cellular_alt_outlined,
        option: "Configurar perfil de investimentos"),
    Options(icon: Icons.document_scanner_outlined, option: "Sobre"),
    Options(icon: Icons.receipt_outlined, option: "Infome rendimentos"),
    Options(icon: Icons.logout_outlined, option: "Sair do aplicativo"),
  ];

  static List<Discovery> fetchAll() {
    return discoveryitems;
  }

  static List<Options> fetchOptions() {
    return optionsItems;
  }
}
