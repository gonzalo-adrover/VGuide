import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';

class NutrientScreen extends StatelessWidget {
  final Color pageColor;
  final String facilitators;
  final List<String> foods;
  final int id;
  final String imageUrl;
  final String inhibitors;
  final String title;
  final String longDesc;

  const NutrientScreen(
      {this.pageColor,
      this.title,
      this.longDesc,
      this.facilitators,
      this.foods,
      this.id,
      this.imageUrl,
      this.inhibitors});

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Proteina: ' + title),
        backgroundColor: Color.fromRGBO(76,92,155,1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(76,92,155,1),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                    image: NetworkImage(imageUrl), fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 20),
            Text(
              this.title,
              style: VGuideTextStyles.detailsTitleText(themeData),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Text(
              this.longDesc,
              style: VGuideTextStyles.detailsDescriptionText(themeData),
              textAlign: TextAlign.center,
            ),
            // ServingInfoChart(veggie, prefs),
          ],
        ),
      ),
    );
  }
}
