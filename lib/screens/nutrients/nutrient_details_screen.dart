import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            imageSource: nutrient.picURL,
            headerContent: headerText(context),
            bodyContent: NutrientDescription(
              nutrient: nutrient,
            ),
          ),
        ));
  }

  Widget headerText(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nutriente",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            nutrient.name,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      );

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      elevation: 0,
    );
  }
}
