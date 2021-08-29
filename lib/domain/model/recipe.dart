import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class Recipe {
  final String name;
  final List<VeggieType> veggieTypes;
  final List<Food> foodList;
  final String description;
  final String picURL;

  const Recipe(
      {this.name,
      this.veggieTypes,
      this.foodList,
      this.description,
      this.picURL});
}
