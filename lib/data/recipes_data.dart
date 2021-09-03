import 'package:vguide/data/foods_data.dart';
import 'package:vguide/data/veggie_types.dart';
import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/recipe.dart';

class RecipesData {
  static List<Recipe> getRecipes() => [
        Recipe(
            name: "Calabacín capresse",
            veggieTypes: [VeggieTypes.ovoLactoVegetarian],
            foodList: [
              FoodsData.getRecipeFood(
                  FoodKey.calabacin, """1,5kg\n~ 1/2 uni"""),
              FoodsData.getRecipeFood(FoodKey.tomate, """800g\n~ 4 uni"""),
              FoodsData.getRecipeFood(FoodKey.quesoDambo, """10 fetas"""),
              FoodsData.getRecipeFood(FoodKey.huevo, """100g\n ~ 2 uni"""),
              FoodsData.getRecipeFood(FoodKey.albahaca, """5\n~ 1 puñado"""),
              FoodsData.getRecipeFood(FoodKey.ajo, """2g\n~ 2 dientes"""),
              FoodsData.getRecipeFood(
                  FoodKey.aceiteOliva, """30mL\n~ 2 cdas"""),
              FoodsData.getRecipeFood(FoodKey.sal, """5g\n~ 1 cta"""),
              FoodsData.getRecipeFood(FoodKey.pimienta, """A gusto""")
            ],
            steps: [
              "Retirar las semillas del calabacín (reservarlas) y colocarlo en el horno a 180°C durante 30 minutos o hasta que esté cocido.",
              "Ahuecar el calabacín y reservar el relleno.",
              "Picar en cubos y saltear en 1 cda de aceite de oliva el ajo y los tomates hasta obtener una salsa.",
              "Mezclar en un bowl el calabacín con la salsa, los huevos, la albahaca y el queso.",
              "Colocar el relleno en el calabacín y volver a hornear durante 30 minutos a 180°C.",
              "Opcional: decorar con tomates cherrys y las semillas salteadas en aceite de oliva."
            ],
            serving: "400g",
            nutrientsList: [
              FoodsData.getRecipeNutrient(
                  RecipeNutrientKey.carbohidratos, "8,9 g"),
              FoodsData.getRecipeNutrient(
                  RecipeNutrientKey.proteinas, "10,1 g"),
              FoodsData.getRecipeNutrient(RecipeNutrientKey.lipidos, "14,1 g"),
              FoodsData.getRecipeNutrient(RecipeNutrientKey.omega3, "0,4 g"),
              FoodsData.getRecipeNutrient(RecipeNutrientKey.calcio, "138,4 mg"),
              FoodsData.getRecipeNutrient(RecipeNutrientKey.hierro, "2,1 mg"),
              FoodsData.getRecipeNutrient(RecipeNutrientKey.zinc, "1,6 mg")
            ],
            picURL:
                "https://i0.wp.com/cocinainspira.com/wp-content/uploads/2019/09/DSCF9814-1024x683.jpg?resize=750%2C500&ssl=1"),
        Recipe(
            name: "Tortilla de garbanzo",
            veggieTypes: [VeggieTypes.all],
            picURL:
                "https://cdn.queapetito.com/wp-content/uploads/2019/11/tortilla-3-600x469.jpg"),
        Recipe(
            name: "Pastel de lentejas",
            veggieTypes: [VeggieTypes.ovoLactoVegetarian],
            picURL:
                "https://recetasveganas.net/wp-content/uploads/2019/01/recetas-vegetarianas-pastel-patata-lentejas-facil-sano7-1170x775.png"),
        Recipe(name: "Pastel de verduras", veggieTypes: [VeggieTypes.all]),
        Recipe(name: "Nuggets de proteína", veggieTypes: [VeggieTypes.all]),
        Recipe(name: "Queso de caju", veggieTypes: [VeggieTypes.all]),
        Recipe(name: "Paté de girasol", veggieTypes: [VeggieTypes.all]),
        Recipe(name: "Mayonesa de zanahoria", veggieTypes: [VeggieTypes.all]),
        Recipe(name: "Quinotto (Risotto de quinoa)", veggieTypes: [
          VeggieTypes.ovoLactoVegetarian,
          VeggieTypes.lactoVegetarian
        ]),
        Recipe(name: "Hummus de garbanzos", veggieTypes: [VeggieTypes.all])
      ];
}
