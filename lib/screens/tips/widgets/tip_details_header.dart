import 'package:flutter/material.dart';

class TipDetailsHeader extends StatelessWidget {
  final String title;

  TipDetailsHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tip",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ]);
  }
}
