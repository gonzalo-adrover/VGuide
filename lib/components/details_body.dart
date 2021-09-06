import 'package:flutter/material.dart';
import 'constants.dart' as Constants;

class DetailsBody extends StatelessWidget {
  final Widget content;
  DetailsBody({this.content});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.3),
      padding: EdgeInsets.only(
          top: size.height * 0.18,
          left: Constants.paddingInContainer,
          right: Constants.paddingInContainer),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Constants.boxDecorationRadius),
          topRight: Radius.circular(Constants.boxDecorationRadius),
        ),
      ),
      child: content,
    );
  }
}
