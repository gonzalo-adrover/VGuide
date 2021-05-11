import 'package:vguide/domain/model/nutrient.dart';

class Food {
  final String category;
  final String name;
  final List<Nutrient> nutrientList;
  final String picURL;

  const Food({this.category, this.name, this.nutrientList, this.picURL});
}
