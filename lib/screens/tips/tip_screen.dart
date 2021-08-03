import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';

class TipScreen extends StatelessWidget {
  final Color pageColor;
  final String name;
  final String longDesc;

  const TipScreen({this.pageColor, this.name, this.longDesc});

  @override
  Widget build(BuildContext context) {
    final themeData = CupertinoTheme.of(context);

    return Container(
      color: pageColor,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text('Nutriente',
                    style: VGuideTextStyles.detailsPreferredCategoryText(
                        themeData)),
              ],
            ),
            SizedBox(height: 8),
            Text(
              this.name,
              style: VGuideTextStyles.detailsTitleText(themeData),
            ),
            SizedBox(height: 8),
            Text(
              this.name,
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ),
            // ServingInfoChart(veggie, prefs),
          ],
        ),
      ),
    );
  }
}
