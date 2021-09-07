import 'package:vguide/domain/model/nutrient.dart';

class Food {
  final FoodKey key;
  final FoodCategory category;
  final String name;
  final String picUrl;
  final List<Nutrient> nutrientList;

  const Food(
      {this.key, this.category, this.name, this.picUrl, this.nutrientList});
}

enum FoodCategory {
  water,
  vegetables,
  fruits,
  diary,
  egg,
  legumes,
  cereals,
  seeds,
  nuts,
  oils,
  seasonings,
  vegetableDrinks,
  other
}

enum FoodKey {
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
  garbanzos,
  aceite,
  apio
}
