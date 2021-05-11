import 'package:vguide/domain/model/user_type.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class User {
  final String gender;
  final String age;
  final VeggieType veggieType;
  final UserType userType;

  const User({this.gender, this.age, this.veggieType, this.userType});
}
