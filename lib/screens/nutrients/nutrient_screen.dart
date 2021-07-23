import 'package:flutter/material.dart';

class NutrientScreen extends StatelessWidget {
  final String name;
  final Color pageColor;
  final String longDesc;
  final List<String> foods;
  final String facilitators;

  const NutrientScreen({this.name, this.longDesc, this.foods, this.facilitators, this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: pageColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ]),
            Text(
              this.longDesc,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
