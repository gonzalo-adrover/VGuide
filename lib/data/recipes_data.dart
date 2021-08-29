import 'package:vguide/data/foods_data.dart';
import 'package:vguide/data/nutrients_data.dart';
import 'package:vguide/data/veggie_types.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/recipe.dart';

class RecipesData {
  static List<Recipe> getRecipes() => [
        Recipe(
            name: "Calabacín capresse",
            veggieTypes: [VeggieTypes.ovoLactoVegetarian],
            foodList: [
              FoodsData.getFood(
                  FoodNames.calabacin, Amount.singular, "1,5kg ~ 1/2 unidad"),
              FoodsData.getFood(
                  FoodNames.tomate, Amount.plural, "800gr ~ 4 unidades")
              // TODO: put more foods here
            ],
            description: """
              1. Retirar las semillas del calabacín (reservarlas) y colocarlo en el horno a 180°C durante 30 minutos o hasta que esté cocido. 
              2. Ahuecar el calabacín y reservar el relleno 
              3. Picar en cubos y saltear en 1 cda de aceite de oliva el ajo y los tomates hasta obtener una salsa. 
              4. Mezclar en un bowl el calabacín con la salsa, los huevos, la albahaca y el queso. 
              5. Colocar el relleno en el calabacín y volver a hornear durante 30 minutos a 180°C. 
              Opcional: decorar con tomates cherrys y las semillas salteadas en aceite de oliva.
            """,
            nutrientsList: {
              NutrientsData.getNutrient(NutrientKey.carbohidratos): "8,9 g",
              NutrientsData.getNutrient(NutrientKey.proteina): "10,1 g",
              NutrientsData.getNutrient(NutrientKey.grasas): "14,1 g",
              NutrientsData.getNutrient(NutrientKey.omega3): "0,4 g",
              NutrientsData.getNutrient(NutrientKey.calcio): "138,4 mg",
              NutrientsData.getNutrient(NutrientKey.hierro): "2,1 mg",
              NutrientsData.getNutrient(NutrientKey.zinc): "1,6 mg"
            },
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
