import 'package:flutter/material.dart';

class DetailsLayout extends StatelessWidget {
  final Widget header;
  final Widget body;

  DetailsLayout({this.header, this.body})
      : assert(header != null && body != null);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 10.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            padding: EdgeInsets.only(
                top: size.height * 0.18, left: 20, right: 20, bottom: 40.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
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
