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
        ]),
    Store(
        name: "Ándale Taqueria Vegana",
        contactList: [
          Contact(
              address: "Canelones 1552",
              phoneNumber: "099 456 647",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Ándale Taqueria Vegana'),
                  description: 'Ándale Taqueria Vegana - Canelones 1552',
                  position: LatLng(-34.9082416, -56.184116))),
        ],
        description: "Comida mexicana vegana y hamburguesas veganas.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@andaletaqueriavegana"),
          SocialLink(network: NetworkType.web, data: "www.andale.uy")
        ]),
    Store(
        name: "La Temeraria",
        contactList: [
          Contact(
              address: "Juan Paullier 1046",
              phoneNumber: "2400 4139",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('La Temeraria'),
                  description: 'La Temeraria - Juan Paullier 1046',
                  position: LatLng(-34.9093851, -56.1693494))),
        ],
        description: "Cocina casera, vegana y vegetariana.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@latemeraria_rockandfood"),
        ]),
    Store(
        name: "Mercado Vegan Uy",
        contactList: [
          Contact(
              address: "Lorenzo Perez 3006",
              phoneNumber: "095 204 116",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mercado Vegan Uy'),
                  description: 'Mercado Vegan Uy - Lorenzo Perez 3006',
                  position: LatLng(-34.9046852, -56.1505023))),
        ],
        description: "Tienda de productos veganos online, delivery o pick up.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@mercadovegan_uy"),
          SocialLink(network: NetworkType.web, data: "www.mercadovegan.com"),
        ]),
    Store(
        name: "Dolly Helados Veganos",
        contactList: [
          Contact(
              address: "Av. Brasil 3125",
              phoneNumber: "2705 9444",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Dolly Helados Veganos'),
                  description: 'Dolly Helados Veganos - Av. Brasil 3125',
                  position: LatLng(-34.9141777, -56.1515194))),
        ],
        description:
            "Helados veganos. También los podes encontrar en Disco Fresh market, Geant y Devoto express.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@dollyheladosveganos"),
        ]),
    Store(
        name: "Kiosko Veganoide",
        contactList: [
          Contact(
              address: "Lázaro Gadea 973",
              phoneNumber: "098 313 415",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Kiosko Veganoide'),
                  description: 'Kiosko Veganoide - Lázaro Gadea 973',
                  position: LatLng(-34.9139677, -56.1522904))),
        ],
        description: "Tienda 100% vegana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@kiosko_veganoide"),
        ]),
    Store(
        name: "Guacamole Uy",
        contactList: [
          Contact(
              address: "Av. 18 de Julio 1070",
              phoneNumber: "099 710 796",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Guacamole Uy'),
                  description: 'Guacamole Uy - Av. 18 de Julio 1070',
                  position: LatLng(-34.9061794, -56.1954146))),
        ],
        description: "Restaurante vegetariano.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.web, data: "www.guacamole.uy"),
        ]),
    Store(
        name: "Rincón Natural",
        contactList: [
          Contact(
              address: "Dr. Mario Cassinoni 1660",
              phoneNumber: "098 299 894",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Rincón Natural'),
                  description: 'Rincón Natural - Dr. Mario Cassinoni 1660',
                  position: LatLng(-34.8965401, -56.168201))),
        ],
        description: "Restaurante vegano.",
        socialMediaLinks: []),
    Store(
        name: "Mango",
        contactList: [
          Contact(
              address: "Gabriel Pereira 2956",
              phoneNumber: "098 923 294",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mango'),
                  description: 'Mango - Gabriel Pereira 2956',
                  position: LatLng(-34.9059527, -56.1536558))),
        ],
        description:
            "Vegano, casero y saludable. Dine in - take away - delivery.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@mangoveganfood")
        ]),
    Store(
        name: "Brunch",
        contactList: [
          Contact(
              address: "Chaná 1801",
              phoneNumber: "2407 2585",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Brunch'),
                  description: 'Brunch - Chaná 1801',
                  position: LatLng(-34.9055449, -56.1792512))),
        ],
        description: "Vegano, vegetariano y ecofriendly.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@brunchmvd")
        ]),
    Store(
        name: "Namasté",
        contactList: [
          Contact(
              address: "Bv. Gral. Artigas 1176",
              phoneNumber: "2709 5554",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Namasté'),
                  description: 'Namasté - Bv. Gral. Artigas 1176',
                  position: LatLng(-34.9071299, -56.1654045))),
        ],
        description: "Restaurante vegetariano. Dine in -take away - delivery.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.web, data: "www.namaste.com.uy")
        ]),
    Store(
        name: "Amartesana",
        contactList: [
          Contact(
              address: "Carlos F. Sáez 6695",
              phoneNumber: "2605 8210",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Amartesana'),
                  description: 'Amartesana - Carlos F. Sáez 6695',
                  position: LatLng(-34.8903635, -56.0587774))),
        ],
        description: "Restaurante vegetariano.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@amartesana_resto")
        ]),
    Store(
        name: "Mandalas",
        contactList: [
          Contact(
              address: "San José 942",
              phoneNumber: "2909 1966",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Mandalas'),
                  description: 'Mandalas - San José 942',
                  position: LatLng(-34.9072921, -56.1982762))),
        ],
        description: "Restaurante vegetariano - Tienda de alimentos naturales.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram,
              data: "@mandalascocinavegetariana")
        ]),
    Store(
        name: "Delira Bar Vegano",
        contactList: [
          Contact(
              address: "Dr Emilio Frugoni 1393",
              phoneNumber: "092 524 851",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Delira Bar Vegano'),
                  description: 'Delira Bar Vegano - Dr Emilio Frugoni 1393',
                  position: LatLng(-34.9043935, -56.1782371))),
        ],
        description: "Bar de comida vegana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@delira1393")
        ]),
    Store(
        name: "Frio Frio",
        contactList: [
          Contact(
              address: "Av. Ramon Anador 3826",
              phoneNumber: "2628 0292",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Frio Frio'),
                  description: 'Frio Frio - Ramon Anador 3826',
                  position: LatLng(-34.8933776, -56.1333752))),
        ],
        description: "Tienda de congelados vegetarianos y veganos.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@Friofrio"),
          SocialLink(network: NetworkType.web, data: "www.friofrio.com.uy")
        ]),
    Store(
        name: "La Molienda",
        contactList: [
          Contact(
              address: "Av. 18 de Julio 890",
              phoneNumber: "2903 2515",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('La Molienda 1'),
                  description: 'La Molienda - Av. 18 de Julio 890',
                  position: LatLng(-34.9064072, -56.1994757))),
          Contact(
              address: "Sarandí 550",
              phoneNumber: "2916 4431",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('La Molienda 2'),
                  description: 'La Molienda - Sarandí 550',
                  position: LatLng(-34.9072767, -56.2060798))),
          Contact(
              address: "Ejido 1423",
              phoneNumber: "2901 3947",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('La Molienda 3'),
                  description: 'La Molienda - Ejido 1423',
                  position: LatLng(-34.9042932, -56.1894571))),
        ],
        description: "Tienda de alimentos naturales.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.web, data: "www.lamolienda.uy")
        ]),
    Store(
        name: "Madre Tierra",
        contactList: [
          Contact(
              address: "Juan Benito Blanco 983",
              phoneNumber: "097 073 543",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 1'),
                  description: 'Madre Tierra - Juan Benito Blanco 983',
                  position: LatLng(-34.9133966, -56.1509881))),
          Contact(
              address: "Juan Antonio Artigas 4128",
              phoneNumber: "097 214 608",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 2'),
                  description: 'Madre Tierra - Juan Antonio Artigas 4128',
                  position: LatLng(-34.8575798, -56.2204437))),
          Contact(
              address: "Yamandú 5568",
              phoneNumber: "2320 2787",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 3'),
                  description: 'Madre Tierra - Yamandú 5568',
                  position: LatLng(-34.8102152, -56.2250285))),
          Contact(
              address: "Mercado Agrícola de Montevideo",
              phoneNumber: "097 073 695",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 4'),
                  description: 'Madre Tierra - Mercado Agrícola de Montevideo',
                  position: LatLng(-34.8868841, -56.1855638))),
        ],
        description: "Tienda de alimentos naturales y suplementos.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.web, data: "www.madretierra.com.uy")
        ]),
    Store(
        name: "Meta Pata",
        contactList: [
          Contact(
              address: "Las Violetas 1044",
              phoneNumber: "095 316 089",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Meta Pata'),
                  description: 'Meta Pata - Las Violetas 1044',
                  position: LatLng(-34.8405239, -56.2053464))),
        ],
        description: "Comida tipica uruguaya pero versión vegetariana.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@metapatacomidavegana"),
          SocialLink(
              network: NetworkType.web, data: "www.metapatacomidavegana.uy")
        ]),
    Store(
        name: "Suculento Comida Vegana",
        contactList: [
          Contact(
              address: "Delivery en Mvd",
              phoneNumber: "091 423 214",
              department: Department.montevideo,
              marker: MapMarker(
                  markerId: MarkerId('Suculento Comida Vegana'),
                  description: 'Suculento Comida Vegana - Zona de Delivery',
                  position: LatLng(-34.8198621, -56.2702041))),
        ],
        description: "Delivery de comida vegana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.facebook, data: "suculentovegan"),
          SocialLink(network: NetworkType.web, data: "www.suculento.uy")
        ]),
  ];
}
