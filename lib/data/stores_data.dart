import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../domain/model/store.dart';

class StoresData {
  static const List<Store> stores = [
    Store(
        name: "Mercado Verde",
        contactList: [
          Contact(
              address: "Av. Dr. Juan B. Alberdi 6587",
              phoneNumber: "2601 5763",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde #1'),
                  description: 'Mercado Verde - Av. Dr. Juan B. Alberdi 6587',
                  position: LatLng(-34.8796742, -56.0662053))),
          Contact(
              address: "Jaime Zudañez 2511",
              phoneNumber: "2710 1999",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde #2'),
                  description: 'Mercado Verde - Jaime Zudañez 2511',
                  position: LatLng(-34.9161501, -56.1604712))),
          Contact(
              address: "Juan Rodríguez Correa 1329",
              phoneNumber: "2203 7393",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde #3'),
                  description: 'Mercado Verde - Juan Rodríguez Correa 1329',
                  position: LatLng(-34.8675641, -56.1961091)))
        ],
        description:
            "Tienda ecofriendly con un amplio surtido en productos orgánicos, naturales y saludables.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@mercadoverde"),
          SocialLink(network: NetworkType.web, data: "www.mercadoverde.com.uy")
        ]),
    Store(
        name: "Go Vegan",
        contactList: [
          Contact(
              address: "Rivera 4183",
              phoneNumber: "093 829 995",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Go Vegan'),
                  description: 'Go Vegan - Rivera 4183',
                  position: LatLng(-34.8964545, -56.1254235))),
        ],
        description: "Supermercado vegano.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@goveganuy"),
          SocialLink(
              network: NetworkType.web, data: "https://shop.govegan.com.uy")
        ]),
    Store(
        name: "Vegan Wraps",
        contactList: [
          Contact(
              address: "Lorenzo J. Perez 3010",
              phoneNumber: "098 553 007",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Vegan Wraps'),
                  description: 'Vegan Wraps - Lorenzo J. Perez 3010',
                  position: LatLng(-34.9047406, -56.1504157))),
        ],
        description: "Comida vegetariana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@veganwraps.uy")
        ])
  ];
}
