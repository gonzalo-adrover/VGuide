import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/recipe.dart';

class FoodsData {
  static Food getFood(FoodKey key) => getFoodsList
      .firstWhere((element) => element.key == key, orElse: () => null);

  static RecipeFood getRecipeFood(FoodKey key, String serving) {
    Food food = getFood(key);
    if (food != null) {
      RecipeFood recipeFood = RecipeFood(
          key: key, name: food.name, serving: serving, picUrl: food.picUrl);
      return recipeFood;
    } else {
      return null;
    }
  }

  static RecipeNutrient getRecipeNutrient(
      RecipeNutrientKey key, String serving) {
    RecipeNutrient nutrient = getRecipeNutrients
        .firstWhere((element) => element.key == key, orElse: () => null);
    if (nutrient != null) {
      RecipeNutrient recipeNutrient = RecipeNutrient(
          key: nutrient.key, name: nutrient.name, amount: serving);
      return recipeNutrient;
    } else {
      return null;
    }
  }

  static List<RecipeNutrient> getRecipeNutrients = [
    RecipeNutrient(key: RecipeNutrientKey.carbohidratos, name: "Carbohidratos"),
    RecipeNutrient(key: RecipeNutrientKey.proteinas, name: "Proteinas"),
    RecipeNutrient(key: RecipeNutrientKey.lipidos, name: "Lípidos"),
    RecipeNutrient(key: RecipeNutrientKey.omega3, name: "Omega 3"),
    RecipeNutrient(key: RecipeNutrientKey.calcio, name: "Calcio"),
    RecipeNutrient(key: RecipeNutrientKey.hierro, name: "Hierro"),
    RecipeNutrient(key: RecipeNutrientKey.zinc, name: "Zinc"),
  ];

  static List<Food> getFoodsList = [
    Food(
        name: "Calabacin",
        key: FoodKey.calabacin,
        category: FoodCategory.vegetables,
        picUrl:
            "https://http2.mlstatic.com/D_NQ_NP_933336-MLU32029663688_082019-O.jpg"),
    Food(
        name: "Tomate",
        key: FoodKey.tomate,
        category: FoodCategory.fruits,
        picUrl:
            "https://geant.vteximg.com.br/arquivos/ids/252446-1000-1000/401026.jpg?v=637281946630130000"),
    Food(
      name: "Queso dambo",
      key: FoodKey.quesoDambo,
      category: FoodCategory.diary,
      picUrl:
          "http://d3ugyf2ht6aenh.cloudfront.net/stores/001/212/971/products/dambo1-14196fc372f61f272d16001112998795-640-0.jpg",
    ),
    Food(
        name: "Huevo",
        key: FoodKey.huevo,
        category: FoodCategory.egg,
        picUrl: "https://i.blogs.es/09c069/huevo/450_1000.jpg"),
    Food(
        name: "Albahaca",
        key: FoodKey.albahaca,
        category: FoodCategory.vegetables,
        picUrl:
            "https://www.huertosalma.cl/wp-content/uploads/2020/06/Albahaca-Hoja-Ancha-500-Grs-Fabricante-Applewood-Procedencia-Usa.jpg"),
    Food(
        name: "Ajo",
        key: FoodKey.ajo,
        category: FoodCategory.vegetables,
        picUrl:
            "https://hdstatic.net/gridfs/holadoctor/ns_bottomline-garlic-sp-1548152502,074.jpg"),
    Food(
        name: "Aceite de oliva",
        key: FoodKey.aceiteOliva,
        category: FoodCategory.oils,
        picUrl:
            "https://www.republica.com/wp-content/uploads/2014/11/aceite-oliva3.jpg"),
    Food(
        name: "Sal",
        key: FoodKey.sal,
        category: FoodCategory.seasonings,
        picUrl:
            "https://www.niter.com.uy/wp-content/uploads/2020/09/sal-marina-f-280x280-2.jpg"),
    Food(
        name: "Pimienta",
        key: FoodKey.pimienta,
        category: FoodCategory.seasonings,
        picUrl:
            "https://perfumesyfragancias.online/wp-content/uploads/2018/10/poivre-noir.jpg")
  ];
}
