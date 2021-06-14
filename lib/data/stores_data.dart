import '../domain/model/store.dart';

class StoresData {
  static const List<Store> stores = [
    Store(
        name: "Mercado Verde",
        contactList: [
          Contact(
              address: "Av. Dr. Juan B. Alberdi 6587",
              phoneNumber: "2601 5763",
              department: Department.montevideo
          ),
          Contact(
            address: "Jaime Zudañez 2511", 
            phoneNumber: "2710 1999",
            department: Department.montevideo
          ),
          Contact(
              address: "Juan Rodríguez Correa 1329", 
              phoneNumber: "2203 7393",
              department: Department.montevideo
          )
        ],
        description:
            "Tienda ecofriendly con un amplio surtido en productos orgánicos, naturales y saludables.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@mercadoverde"),
          SocialLink(network: NetworkType.web, data: "mercadoverde.com.uy")
        ]),
    Store(
      name: "Go Vegan",
      contactList: [
        Contact(
          address: "Rivera 4183",
          phoneNumber: "093 829 995",
          department: Department.montevideo
        )
      ],
      description: "Supermercado vegano.",
      socialMediaLinks: [
        SocialLink(
          network: NetworkType.instagram, data: "@goveganuy"
        ),
        SocialLink(network: NetworkType.web, data: "https://shop.govegan.com.uy")
      ]
    ),
    Store(
      name: "Vegan Wraps",
      contactList: [
        Contact(
          address: "Lorenzo J Perez 3010",
          phoneNumber: "098 553 007",
          department: Department.montevideo
        )
      ],
      description: "Comida vegetariana.",
      socialMediaLinks: [
        SocialLink(
          network: NetworkType.instagram,
          data: "@veganwraps.uy"
        )
      ]
    )
  ];
}
