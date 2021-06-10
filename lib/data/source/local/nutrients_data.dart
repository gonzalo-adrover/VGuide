import '../../../domain/model/nutrient.dart';

class NutrientsData {
  final List<NutrientListItem> nutrients = [
    NutrientListItem(
        id: 0,
        name: "Proteina",
        shortDesc:
            "Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos."),
    NutrientListItem(
        id: 1,
        name: "Ácidos grasos omega 3",
        shortDesc:
            "Los ácidos grasos omega 3 son un tipo de grasa saludable y necesaria para el cuerpo."),
    NutrientListItem(
        id: 2,
        name: "Calcio",
        shortDesc:
            "El calcio es un mineral necesario para el funcionamiento del cuerpo."),
    NutrientListItem(
        id: 3,
        name: "Hierro",
        shortDesc:
            "El hierro es un mineral cuya función principal es transportar el oxígeno en la sangre."),
    NutrientListItem(
        id: 4,
        name: "Zinc",
        shortDesc:
            "Este mineral está presente en todos los órganos, tejidos, fluidos y secreciones del cuerpo."),
    NutrientListItem(
        name: "Yodo",
        shortDesc:
            "Este mineral es el componente esencial para la formación de las hormonas tiroideas (T3 y T4)."),
    NutrientListItem(
        name: "Vitamina D",
        shortDesc:
            "La vitamina D participa en la fijación del calcio en los huesos y además aumenta la absorción de este mineral."),
    NutrientListItem(
        name: "Vitamina B12",
        shortDesc:
            "Esta vitamina participa en la formación de glóbulos rojos, proteínas y favorece el buen funcionamiento cerebral.")
  ];
}
