import 'package:flutter/material.dart';
import 'constants.dart' as Constants;

class DetailsHeader extends StatelessWidget {
  final String imageUrl; // For remote image
  final String imageSource; // For local image
  final Widget headerContent;

  DetailsHeader({this.imageUrl, this.imageSource, this.headerContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headerContent,
          SizedBox(height: Constants.sizedBoxHeight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: Constants.imageContainerWidth,
                height: Constants.imageContainerHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Constants.boxRadiusImage),
                    topRight: Radius.circular(Constants.boxRadiusImage),
                    bottomLeft: Radius.circular(Constants.boxRadiusImage),
                    bottomRight: Radius.circular(Constants.boxRadiusImage),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                      image: imageUrl != null
                          ? NetworkImage(imageUrl)
                          : AssetImage(imageSource),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
