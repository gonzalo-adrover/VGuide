import 'package:flutter/material.dart';
import 'constants.dart' as Constants;

class DetailsLayout extends StatelessWidget {
  final Widget header;
  final Widget body;

  DetailsLayout({this.header, this.body})
      : assert(header != null && body != null);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: Constants.paddingInContainer),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
                top: size.height * 0.07, left: Constants.paddingInContainer, right: Constants.paddingInContainer),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Constants.boxDecorationRadius),
                topRight: Radius.circular(Constants.boxDecorationRadius),
              ),
            ),
            child: body,
          ),
          header
        ],
      ),
    );
  }
}
