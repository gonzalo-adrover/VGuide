import 'package:flutter/material.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class VeggieTypes {
  static final vegan = VeggieType(name: "Vegano", color: Colors.amber.shade200);
  static final ovoVegetarian =
      VeggieType(name: "Ovo-Vegetariano", color: Colors.lightBlue.shade200);
  static final lactoVegetarian =
      VeggieType(name: "Lacto-Vegetariano", color: Colors.teal.shade200);
  static final ovoLactoVegetarian =
      VeggieType(name: "Ovo-Lacto-Vegetariano", color: Colors.indigo.shade200);
  static final all =
      VeggieType(name: "Todos los tipos", color: Colors.pink.shade200);
}
