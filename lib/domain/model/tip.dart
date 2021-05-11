import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';

class Tip {
  final String name;
  final String shortDesc;
  final String longDesc;
  final String picURL;
  final List<Food> foodList;
  final List<Nutrient> nutrientList;

  const Tip(
      {this.name,
      this.shortDesc,
      this.longDesc,
      this.nutrientList,
      this.foodList,
      this.picURL});
}
