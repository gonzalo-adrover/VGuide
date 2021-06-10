import '../../../domain/model/nutrient.dart';

class NutrientsData {
  getNutrients() {
    return nutrients;
  }

  final List<NutrientListItem> nutrients = [
    NutrientListItem(
        name: "Proteina",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos.   Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos."),
    NutrientListItem(
        name: "Ácidos grasos omega 3",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "Los ácidos grasos omega 3 son un tipo de grasa saludable y necesaria para el cuerpo."),
    NutrientListItem(
        name: "Calcio",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "El calcio es un mineral necesario para el funcionamiento del cuerpo."),
    NutrientListItem(
        name: "Hierro",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "El hierro es un mineral cuya función principal es transportar el oxígeno en la sangre."),
    NutrientListItem(
        name: "Zinc",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "Este mineral está presente en todos los órganos, tejidos, fluidos y secreciones del cuerpo."),
    NutrientListItem(
        name: "Yodo",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "Este mineral es el componente esencial para la formación de las hormonas tiroideas (T3 y T4)."),
    NutrientListItem(
        name: "Vitamina D",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "La vitamina D participa en la fijación del calcio en los huesos y además aumenta la absorción de este mineral."),
    NutrientListItem(
        name: "Vitamina B12",
        longDesc:
            'Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. \n Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)',
        shortDesc:
            "Esta vitamina participa en la formación de glóbulos rojos, proteínas y favorece el buen funcionamiento cerebral.")
  ];
}
