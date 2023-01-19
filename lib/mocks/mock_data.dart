import 'package:nubank/model/discover_more_options.dart';

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

  static List<Discovery> fetchAll() {
    return discoveryitems;
  }
}
