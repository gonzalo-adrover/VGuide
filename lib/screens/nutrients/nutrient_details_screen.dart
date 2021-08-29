import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/components/body.dart';

class NutrientDetailsScreen extends StatelessWidget {
  final Nutrient nutrient;

  const NutrientDetailsScreen({this.nutrient});

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    return Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Color.fromRGBO(76, 92, 155, 1),
        body: Container(
          child: Body(nutrient: nutrient),
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      elevation: 0,
    );
  }
}
