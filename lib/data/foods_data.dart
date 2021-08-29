import 'package:vguide/domain/model/food.dart';

class FoodsData {
  static getFood(FoodNames name, Amount amount, String serving) {
    switch (name) {
      case FoodNames.calabacin:
        return Food(
            name: "${amount == Amount.singular ? "Calabacin" : "Calabacines"}",
            category: FoodCategory.vegetables,
            serving: serving);
        break;
      case FoodNames.tomate:
        return Food(
            name: "${amount == Amount.singular ? "Tomate" : "Tomates"}",
            category: FoodCategory.fruits,
            serving: serving);
        break;
      default:
    }
  }
}

enum Amount { singular, plural }

enum FoodNames {
  calabacin,
  tomate,
  quesoDambo,
  huevo,
  albahaca,
  ajo,
  aceiteOliva,
  sal,
  pimienta,
  harinaGarbanzo,
  agua,
  papa,
  zanahoria,
  cebolla,
  aceiteCanola,
  lenteja,
  morron,
  puerro,
  leche,
  nuezMoscada,
  quesoParmesano,
  pimenton,
  oregano,
  ajil,
  zucchini,
  zapallito,
  berenjena,
  boniatoZanahoria,
  semillasGirasol,
  semillasSesamo,
  proteinaSoja,
  harina,
  panRallado,
  castaniasCaju,
  jugoLimon,
  curcuma,
  curry,
  comino,
  mixHierbas,
  quinoa,
  hongos,
  almendras,
  tofu,
  farinha,
  porotos,
  avena,
  vainilla,
  vinagre,
  cilantro,
  choclo,
  cremaChoclo,
  fideosArroz,
  jengibre,
  brotes,
  salsaSoja,
  coliflor,
  harinaPan,
  porotosNegros,
  cacaoAmargo,
  azucar,
  mixFrutosSecos,
  bebidaVegetal,
  semillasChia,
}
