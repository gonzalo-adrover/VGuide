import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';
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
                    left: 200,
                    right: 200,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        nutrient.name,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black45, fontWeight: FontWeight.bold),
                      ),
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
