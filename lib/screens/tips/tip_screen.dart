import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';

class TipScreen extends StatelessWidget {
  final Color pageColor;
  final String title;
  final String longDesc;
  final String imageUrl;

  const TipScreen({this.pageColor, this.title, this.longDesc, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tip: ' + title),
      ),
      backgroundColor: pageColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              this.title,
              style: VGuideTextStyles.detailsTitleText(themeData),
            ),
            SizedBox(height: 20),
            Text(
              this.longDesc,
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            // ServingInfoChart(veggie, prefs),
          ],
        ),
      ),
    );
  }
}
