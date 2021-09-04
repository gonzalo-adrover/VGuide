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
            picResource: "assets/img/recipes/calabacin_capresse.HEIC"),
        Recipe(
            name: "Tortilla de garbanzo",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/tortilla_garbanzos.PNG"),
        Recipe(
            name: "Pastel de lentejas",
            veggieTypes: [VeggieTypes.ovoLactoVegetarian],
            picResource: "assets/img/recipes/pastel_lentejas.jpg"),
        Recipe(
            name: "Pastel de verduras",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/pastel_verduras.jpg"),
        Recipe(
            name: "Nuggets de proteína",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/nuggets_proteina.jpg"),
        Recipe(
            name: "Queso de caju",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/queso_caju.jpg"),
        Recipe(
            name: "Paté de girasol",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/pate_girasol.jpg"),
        Recipe(
            name: "Mayonesa de zanahoria",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/mayo_zanahoria.jpg"),
        Recipe(
            name: "Quinotto (Risotto de quinoa)",
            veggieTypes: [
              VeggieTypes.ovoLactoVegetarian,
              VeggieTypes.lactoVegetarian
            ],
            picResource: "assets/img/recipes/quinotto.jpg"),
        Recipe(
            name: "Hummus de garbanzos",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/hummus_garbanzos.jpg"),
        Recipe(
            name: "Bocaditos de tofu y garbanzo",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/bocaditos_tofu.jpg"),
        Recipe(
            name: "Hamburguesas de porotos",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/bocaditos_tofu.jpg"),
        Recipe(
            name: "Crepes de garbanzo",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/crepes_garbanzo.jpg"),
        Recipe(
            name: "Ricotta de almendras",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/ricotta_almendras.jpg"),
        Recipe(
            name: "Bebida vegetal de avena",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/bebida_avena.jpg"),
        Recipe(
            name: "Queso cheddar vegano",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/cheddar_vegano.jpg"),
        Recipe(
            name: "Sopa de quinoa",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/sopa_quinoa.jpg"),
        Recipe(
            name: "Empanadas de humita",
            veggieTypes: [VeggieTypes.ovoLactoVegetarian],
            picResource: "assets/img/recipes/empanadas_humita.jpg"),
        Recipe(
            name: "Bolognesa de proteína de soja",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/bolognesa_proteina.jpg"),
        Recipe(
            name: "Albóndigas de lentejas",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/albondigas_lenteja.jpg"),
        Recipe(
            name: "Parmesano de semillas",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/parmesano_semillas.jpg"),
        Recipe(
            name: "Fainá de verduras",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/faina_verduras.jpg"),
        Recipe(
            name: "Pasta al wok con vegetales",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/pasta_wok.PNG"),
        Recipe(
            name: "Nuggets de coliflor",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/nuggets_coliflor.HEIC"),
        Recipe(
            name: "Arepas con salsa criolla",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/arepas.jpg"),
        Recipe(
            name: "Masa de tacos",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/masa_tacos.jpg"),
        Recipe(
            name: "Brownie de porotos negros",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/brownie_porotos.jpg"),
        Recipe(
            name: "Bebida vegetal de almendras",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/bebida_almendras.jpg"),
        Recipe(
            name: "Galletas de gabazo de la bebida de almendras",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/galletas_bagazo_almendras.HEIC"),
        Recipe(
            name: "Pudding de chia y manzana",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/pudding_chia_manzana.jpg"),
        Recipe(
            name: "Pudding de chia y chocolate",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/pudding_chia_chocolate.jpg"),
        Recipe(
            name: "Trufas de maní y limón",
            veggieTypes: [VeggieTypes.all],
            picResource: "assets/img/recipes/trufas_limon_mani.jpg"),
        Recipe(
            name: "Panqueques de banana y avena",
            veggieTypes: [
              VeggieTypes.ovoLactoVegetarian,
              VeggieTypes.ovoVegetarian
            ],
            picResource: "assets/img/recipes/panqueque_avena_banana.jpg")
      ];
}
