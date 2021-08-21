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
        body: Body(nutrient: nutrient)

      // Padding(
      //   padding: const EdgeInsets.all(0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 200,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           boxShadow: [
      //             BoxShadow(
      //               color: Colors.grey.withOpacity(0.5),
      //               spreadRadius: 5,
      //               blurRadius: 7,
      //               offset: Offset(0, 3), // changes position of shadow
      //             ),
      //           ],
      //           image: DecorationImage(
      //               image: NetworkImage(imageUrl), fit: BoxFit.fill),
      //         ),
      //       ),
      //       SizedBox(height: 20),
      //       Text(
      //         this.title,
      //         style: VGuideTextStyles.detailsTitleText(themeData),
      //         textAlign: TextAlign.center,
      //       ),
      //       SizedBox(height: 40),
      //       Text(
      //         this.longDesc,
      //         style: VGuideTextStyles.detailsDescriptionText(themeData),
      //         textAlign: TextAlign.center,
      //       ),
      //       // ServingInfoChart(veggie, prefs),
      //     ],
      //   ),
      // ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      elevation: 0,
    );
  }

}
