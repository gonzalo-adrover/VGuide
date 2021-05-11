import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class Recipe {
  final String name;
  final List<Food> foodList;
  final String description;
  final List<VeggieType> veggieTypeList;
  final List<Nutrient> nutrientList;
  final String picURL;

  const Recipe(
      {this.name,
      this.foodList,
      this.veggieTypeList,
      this.description,
      this.nutrientList,
      this.picURL});
}
