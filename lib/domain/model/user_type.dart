import 'package:vguide/domain/model/recipe.dart';

class UserType {
  final String name;
  final List<Recipe> foodList;

  const UserType({this.name, this.foodList});
}
