import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/details_header.dart';
import 'package:vguide/components/details_layout.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/components/nutrient_description.dart';

class NutrientDetailsScreen extends StatelessWidget {
  final Nutrient nutrient;

  const NutrientDetailsScreen({this.nutrient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Color.fromRGBO(76, 92, 155, 1),
        body: Container(
          child: DetailsLayout(
            header: DetailsHeader(
              imageUrl: nutrient.picURL,
              sectionName: "Nutriente",
              title: nutrient.name,
            ),
            body: NutrientDescription(
              nutrient: nutrient,
            ),
          ),
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      elevation: 0,
    );
  }
}
