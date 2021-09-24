import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../domain/model/store.dart';

class StoresData {
  static List<Department> departments = [
    Department(key: DepartmentType.montevideo, name: "Montevideo"),
    Department(key: DepartmentType.canelones, name: "Canelones"),
    Department(key: DepartmentType.maldonado, name: "Maldonado"),
    Department(key: DepartmentType.colonia, name: "Colonia"),
    Department(key: DepartmentType.paysandu, name: "Paysandú"),
    Department(key: DepartmentType.rocha, name: "Rocha"),
    Department(key: DepartmentType.florida, name: "Florida"),
    Department(key: DepartmentType.durazno, name: "Durazno"),
    Department(key: DepartmentType.rio_negro, name: "Rio Negro"),
    Department(key: DepartmentType.tacuarembo, name: "Tacuarembó"),
    Department(key: DepartmentType.lavalleja, name: "Lavalleja")
  ];

  static Map<DepartmentType, List<Store>> stores = {
    DepartmentType.montevideo: montevideoStores,
    DepartmentType.maldonado: maldonadoStores,
    DepartmentType.canelones: canelonesStores,
    DepartmentType.colonia: coloniaStores,
    DepartmentType.paysandu: paysanduStores,
    DepartmentType.rocha: rochaStores,
    DepartmentType.florida: floridaStores,
    DepartmentType.durazno: duraznoStores,
    DepartmentType.rio_negro: rioNegroStores,
    DepartmentType.tacuarembo: tacuaremboStores,
    DepartmentType.lavalleja: lavallejaStores
  };

  static List<Store> montevideoStores = [
    Store(
        name: "Mercado Verde",
        contactList: [
          Contact(
              address: "Av. Dr. Juan B. Alberdi 6587",
              phoneNumber: "2601 5763",
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde #1'),
                  description: 'Mercado Verde - Av. Dr. Juan B. Alberdi 6587',
                  position: LatLng(-34.8796742, -56.0662053))),
          Contact(
              address: "Jaime Zudañez 2511",
              phoneNumber: "2710 1999",
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde #2'),
                  description: 'Mercado Verde - Jaime Zudañez 2511',
                  position: LatLng(-34.9161501, -56.1604712))),
          Contact(
              address: "Juan Rodríguez Correa 1329",
              phoneNumber: "2203 7393",
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('La Molienda 1'),
                  description: 'La Molienda - Av. 18 de Julio 890',
                  position: LatLng(-34.9064072, -56.1994757))),
          Contact(
              address: "Sarandí 550",
              phoneNumber: "2916 4431",
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('La Molienda 2'),
                  description: 'La Molienda - Sarandí 550',
                  position: LatLng(-34.9072767, -56.2060798))),
          Contact(
              address: "Ejido 1423",
              phoneNumber: "2901 3947",
              department: departments[0],
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
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 1'),
                  description: 'Madre Tierra - Juan Benito Blanco 983',
                  position: LatLng(-34.9133966, -56.1509881))),
          Contact(
              address: "Juan Antonio Artigas 4128",
              phoneNumber: "097 214 608",
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 2'),
                  description: 'Madre Tierra - Juan Antonio Artigas 4128',
                  position: LatLng(-34.8575798, -56.2204437))),
          Contact(
              address: "Yamandú 5568",
              phoneNumber: "2320 2787",
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Madre Tierra 3'),
                  description: 'Madre Tierra - Yamandú 5568',
                  position: LatLng(-34.8102152, -56.2250285))),
          Contact(
              address: "Mercado Agrícola de Montevideo",
              phoneNumber: "097 073 695",
              department: departments[0],
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
              department: departments[0],
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
              department: departments[0],
              marker: MapMarker(
                  markerId: MarkerId('Suculento Comida Vegana'),
                  description: 'Suculento Comida Vegana - Zona de Delivery',
                  position: LatLng(-34.8198621, -56.2702041))),
        ],
        description: "Delivery de comida vegana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.facebook, data: "suculentovegan"),
          SocialLink(network: NetworkType.web, data: "www.suculento.uy")
        ])
  ];

  static List<Store> maldonadoStores = [
    Store(
        name: "Club Natural y Popular",
        contactList: [
          Contact(
              address: "Juan Pedro López 1018, La Barra",
              phoneNumber: "",
              department: departments[2],
              marker: MapMarker(
                  markerId: MarkerId('Club Natural y Popular'),
                  description:
                      'Club Natural y Popular - Juan Pedro López 1018, La Barra',
                  position: LatLng(-34.9110962, -54.8669366))),
        ],
        description: "Cafeteria y cantina vegetariana.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@naturalypopular")
        ]),
    Store(
        name: "Alma",
        contactList: [
          Contact(
              address: "Calle Duende Azul Y Ruta 10, La Barra",
              phoneNumber: "4277 1740",
              department: departments[2],
              marker: MapMarker(
                  markerId: MarkerId('Alma'),
                  description: 'Alma - Calle Duende Azul Y Ruta 10, La Barra',
                  position: LatLng(-34.9143111, -54.8651511))),
        ],
        description:
            "Bowls, Sandwiches, Café, Sopa Detox. Tienda natural y compra a granel.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@almapuntadeleste")
        ]),
    Store(
        name: "Oli Veggie Food",
        contactList: [
          Contact(
              address: "Lima Y Roosevelt - parada 14, Punta del Este",
              phoneNumber: "099 513 957",
              department: departments[2],
              marker: MapMarker(
                  markerId: MarkerId('Oli Veggie Food'),
                  description:
                      'Oli Veggie Food - Lima casi Roosevelt - parada 14, Punta del Este',
                  position: LatLng(-34.9288967, -54.9487769))),
        ],
        description: "Restaurante y café vegetariano.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@oliveggiefood")
        ]),
    Store(
        name: "Mercado Verde",
        contactList: [
          Contact(
              address: "Calle 24 entre 27 y 28",
              phoneNumber: "4244 7165",
              department: departments[2],
              marker: MapMarker(
                  markerId: MarkerId('Mercado Verde'),
                  description: 'Mercado Verde - Calle 24 entre 27 y 28',
                  position: LatLng(-34.9621336, -54.9425777))),
        ],
        description:
            "Tienda ecofriendly con un amplio surtido en productos orgánicos, naturales y saludables.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@mercadoverde")
        ]),
  ];

  static List<Store> canelonesStores = [
    Store(
        name: "RYSA - Rico y SAno",
        contactList: [
          Contact(
              address: "Circumvalacion Y Calle 11, Atlantida",
              phoneNumber: "4371 5585 \n 092 662 672",
              department: departments[1],
              marker: MapMarker(
                  markerId: MarkerId('RYSA'),
                  description: 'RYSA - Circumvalacion Y Calle 11, Atlantida',
                  position: LatLng(-34.7720636, -55.7664095))),
        ],
        description:
            "Propuesta vegetariana especializada en alimentación saludable.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@rysa_atlantida")
        ]),
    Store(
        name: "Mercado Saludable",
        contactList: [
          Contact(
              address:
                  "Av. Perez Butler Y Machado - Manzana 182. Solar 2, Canelones",
              phoneNumber: "097 969 100",
              department: departments[1],
              marker: MapMarker(
                  markerId: MarkerId('Mercado Saludable'),
                  description: 'Mercado Saludable - Av. Perez Butler Y Machado',
                  position: LatLng(-34.8011862, -55.9134234))),
        ],
        description: "Tienda de alimentos saludables.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@mercado_saludable_uy")
        ]),
    Store(
        name: "REQUETEVERDE - Alimentos Saludables",
        contactList: [
          Contact(
              address: "Av. Naciones Unidas Y Av. Costanera",
              phoneNumber: "093 385 176",
              department: departments[1],
              marker: MapMarker(
                  markerId: MarkerId('REQUETEVERDE'),
                  description:
                      'REQUETEVERDE - Av. Naciones Unidas Y Av. Costanera',
                  position: LatLng(-34.802616, -55.9118102))),
        ],
        description: "Tienda de comestibles.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@requeteverde_alimentos")
        ]),
    Store(
        name: "El Olivo - Almacén Natural",
        contactList: [
          Contact(
              address: "Av. Calcagneo Y Roque Saenz Peña, Ciudad de la Costa",
              phoneNumber: "093 933 858",
              department: departments[1],
              marker: MapMarker(
                  markerId: MarkerId('El Olivo'),
                  description:
                      'El Olivo - Av. Calcagneo Y Roque Saenz Peña, Ciudad de la Costa',
                  position: LatLng(-34.8500719, -56.0014093))),
        ],
        description:
            "Productos veganos, celíacos, diabéticos; todo orgánico y nautral.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@almacenelolivo")
        ]),
    Store(
        name: "Nutrydia",
        contactList: [
          Contact(
              address:
                  "Av. de las Instrucciones del Año XII 772 Y Espinola, Las Piedras",
              phoneNumber: "095 338 867",
              department: departments[1],
              marker: MapMarker(
                  markerId: MarkerId('Nutrydia'),
                  description:
                      'Nutrydia - Av. de las Instrucciones del Año XII 772 Y Espinola',
                  position: LatLng(-34.7283396, -56.2211202))),
        ],
        description:
            "Alimentos saludables para veganos, vegetarianos, celíacos; orgánicos y naturales.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@nutrydia_las_piedras")
        ]),
  ];

  static List<Store> coloniaStores = [
    Store(
        name: "Rincón Natural",
        contactList: [
          Contact(
              address: "Av. Gilomen 1360 Y Greisinh, Nueva Halvecia",
              phoneNumber: "098 479 257",
              department: departments[3],
              marker: MapMarker(
                  markerId: MarkerId('Rincón Natural'),
                  description: 'Rincón Natural - Av. Gilomen 1360 Y Greisinh',
                  position: LatLng(-34.2826265, -57.235467))),
        ],
        description: "Venta de productos naturales.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@rincon_natural_nh")
        ]),
    Store(
        name: "Las Castañas",
        contactList: [
          Contact(
              address: "Luis Alberto de Herrera Y Sarandi, Nueva Halvecia",
              phoneNumber: "-",
              department: departments[3],
              marker: MapMarker(
                  markerId: MarkerId('Las Castañas'),
                  description:
                      'Las Castañas - Luis Alberto de Herrera Y Sarandi',
                  position: LatLng(-34.2899906, -57.2348854))),
        ],
        description: "Tienda de alimentos naturales.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@tiendadealimentos")
        ]),
  ];

  static List<Store> paysanduStores = [
    Store(
        name: "Om Shanti",
        contactList: [
          Contact(
              address: "Envios a domicilio",
              phoneNumber: "099 887 097",
              department: departments[4],
              marker: MapMarker(
                  markerId: MarkerId('Om Shanti'),
                  description: 'Om Shanti - Envios a domicilio',
                  position: LatLng(-32.3107752, -58.1117484))),
        ],
        description: "Alimentos veganos.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram,
              data: "@omshanti_alimentosvegetarianos")
        ]),
    Store(
        name: "Tienda Verde",
        contactList: [
          Contact(
              address: "Bulevar Artigas 851, Paysandú",
              phoneNumber: "091 753 024",
              department: departments[4],
              marker: MapMarker(
                  markerId: MarkerId('Tienda Verde'),
                  description: 'Tienda Verde - Bulevar Artigas 851',
                  position: LatLng(-32.320105, -58.0734857))),
        ],
        description: "Almacen natural.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@tiendaverde_")
        ]),
  ];

  static List<Store> rochaStores = [
    Store(
        name: "Namasté Rocha",
        contactList: [
          Contact(
              address: "Treinta y Tres, 27000 Rocha",
              phoneNumber: "098 057 825",
              department: departments[5],
              marker: MapMarker(
                  markerId: MarkerId('Namasté Rocha'),
                  description: 'Namasté Rocha - Treinta y Tres, 27000',
                  position: LatLng(-34.4786795, -54.3380013))),
        ],
        description: "Tienda natural.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@namaste_rocha")
        ]),
  ];

  static List<Store> floridaStores = [
    Store(
        name: "Planeta Verde",
        contactList: [
          Contact(
              address: "Independencia 555, Florida",
              phoneNumber: "2 4353 9438",
              department: departments[6],
              marker: MapMarker(
                  markerId: MarkerId('Planeta Verde'),
                  description: 'Planeta Verde - Independencia 555',
                  position: LatLng(-34.0996801, -56.2163684))),
        ],
        description: "Tienda de alimentos saludables vegetarianos.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@planetaverde_uy")
        ]),
  ];

  static List<Store> duraznoStores = [
    Store(
        name: "Ecotienda Madreselva",
        contactList: [
          Contact(
              address: "Av. Gral. Jose Artigas 487, 97000 Durazno",
              phoneNumber: "4362 4650",
              department: departments[7],
              marker: MapMarker(
                  markerId: MarkerId('Ecotienda Madreselva'),
                  description:
                      'Ecotienda Madreselva - Av. Gral. Jose Artigas 487',
                  position: LatLng(-33.377233, -56.5260147))),
        ],
        description: "Productos naturales.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@ecotiendamadreselva")
        ]),
    Store(
        name: "Come Sano Gourmet",
        contactList: [
          Contact(
              address: "Brig. Gral. Manuel Oribe 425, 97000 Durazno",
              phoneNumber: "4362 6771",
              department: departments[7],
              marker: MapMarker(
                  markerId: MarkerId('Come Sano Gourmet'),
                  description:
                      'Come Sano Gourmet - Brig. Gral. Manuel Oribe 425',
                  position: LatLng(-33.3859178, -56.5287525))),
        ],
        description: "Tienda de alimentos naturales.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@tiendadealimentos")
        ]),
  ];

  static List<Store> rioNegroStores = [
    Store(
        name: "Helianthus Mercado Saludable",
        contactList: [
          Contact(
              address: "Rincon 1204, Fray Bentos",
              phoneNumber: "091 425 973",
              department: departments[8],
              marker: MapMarker(
                  markerId: MarkerId('Helianthus Mercado Saludable'),
                  description: 'Helianthus - Rincon 1204, Fray Bentos',
                  position: LatLng(-33.1174107, -58.3153051))),
        ],
        description: "Productos vegetarianos saludables.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@helianthus.uy")
        ]),
    Store(
        name: "Al Natural - Hamburguesas",
        contactList: [
          Contact(
              address: "Envios a Domicilio (Fray Bentos)",
              phoneNumber: "091 362 148",
              department: departments[8],
              marker: MapMarker(
                  markerId: MarkerId('Al Natural - Hamburguesas'),
                  description:
                      'Al Natural - Hamburguesas - Envios a Domicilio (Fray Bentos)',
                  position: LatLng(-33.1369364, -58.3407905))),
        ],
        description: "Hamburguesas vegetarianas.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@alnaturalhambur")
        ]),
  ];

  static List<Store> tacuaremboStores = [
    Store(
        name: "Vida Sana",
        contactList: [
          Contact(
              address: "25 de Mayo 346 Y Ayala, Tacuarembó",
              phoneNumber: "098 617 181",
              department: departments[9],
              marker: MapMarker(
                  markerId: MarkerId('Vida Sana'),
                  description: 'Vida Sana - 25 de Mayo Y Ayala',
                  position: LatLng(-31.7157581, -55.9866894))),
        ],
        description: "Productos naturales.",
        socialMediaLinks: [
          SocialLink(
              network: NetworkType.instagram, data: "@vidasanatacuarembo")
        ]),
  ];

  static List<Store> lavallejaStores = [
    Store(
        name: "Mercadito Orgánico",
        contactList: [
          Contact(
              address: "Batlle 599 Y 25 de Mayo, Minas, Lavalleja",
              phoneNumber: "098 638 206",
              department: departments[10],
              marker: MapMarker(
                  markerId: MarkerId('Mercadito Orgánico'),
                  description: 'Mercadito Orgánico - Batlle 599 Y 25 de Mayo',
                  position: LatLng(-34.3755906, -55.2375803))),
        ],
        description: "Tienda de comestibles.",
        socialMediaLinks: [
          SocialLink(network: NetworkType.instagram, data: "@organicomercadito")
        ]),
  ];
}
