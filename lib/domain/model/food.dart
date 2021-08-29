import 'package:vguide/domain/model/nutrient.dart';

class Food {
  final FoodCategory category;
  final String name;
  final String serving;
  final String picUrl;
  final List<Nutrient> nutrientList;

  const Food(
      {this.category, this.name, this.serving, this.picUrl, this.nutrientList});
}

enum FoodCategory {
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
  vegetableDrinks
}
