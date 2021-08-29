import 'package:vguide/data/foods_data.dart';
import 'package:vguide/data/veggie_types.dart';
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
