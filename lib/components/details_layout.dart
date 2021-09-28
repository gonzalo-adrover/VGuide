import 'package:flutter/material.dart';
import 'package:vguide/components/details_body.dart';
import 'constants.dart' as Constants;
import 'details_header.dart';

class DetailsLayout extends StatelessWidget {
  final String imageSource;
  final String imageUrl;
  final Widget headerContent;
  final Widget bodyContent;

  DetailsLayout(
      {this.imageSource, this.imageUrl, this.headerContent, this.bodyContent})
      : assert(headerContent != null && bodyContent != null);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: Constants.paddingInContainer),
      child: Column(
        children: <Widget>[
          DetailsHeader(
              imageSource: imageSource,
              imageUrl: imageUrl,
              headerContent: headerContent),
          DetailsBody(
            content: bodyContent,
          ),
        ],
      ),
    );
  }
}
