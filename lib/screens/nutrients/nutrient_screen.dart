import 'package:flutter/material.dart';

class NutrientScreen extends StatelessWidget {
  final String name;
  final String longDesc;
  final Color pageColor;

  const NutrientScreen({this.longDesc, this.name, this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              this.name,
              style: TextStyle(
                fontSize: 41,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
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
