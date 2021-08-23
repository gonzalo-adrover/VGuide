import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/components/description.dart';
import 'package:vguide/screens/nutrients/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Nutrient nutrient;

  const Body({Key key, this.nutrient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      NutrientDescription(nutrient: nutrient),
                    ],
                  ),
                ),
                NutrientTitleWithImage(nutrient: nutrient),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
