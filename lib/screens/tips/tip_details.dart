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
        appBar: AppBar(
          backgroundColor: pageColor,
          elevation: 0,
        ),
        backgroundColor: pageColor,
        body: Container(
          child: DetailsLayout(
            imageUrl: tip.picURL,
            headerContent: TipDetailsHeader(
              title: tip.shortName,
            ),
            bodyContent: SingleChildScrollView(
              child: TipDetailsContent(
                tip: tip,
              ),
            ),
          ),
        ));
  }
}
