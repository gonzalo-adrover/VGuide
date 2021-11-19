import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/details_layout.dart';
import 'package:vguide/domain/model/tip.dart';
import 'package:vguide/screens/tips/widgets/tip_details_content.dart';
import 'package:vguide/screens/tips/widgets/tip_details_header.dart';

class TipDetails extends StatelessWidget {
  final Tip tip;
  static Color pageColor = Colors.red.shade200;

  const TipDetails({this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: pageColor,
        body: Container(
          child: DetailsLayout(
            imageSource: tip.picURL,
            headerContent: TipDetailsHeader(
              title: tip.shortName,
            ),
            bodyContent: TipDetailsContent(
                tip: tip,
            ),
          ),
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: TipDetails.pageColor,
      elevation: 0,
    );
  }
}
