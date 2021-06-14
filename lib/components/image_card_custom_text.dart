import 'package:flutter/material.dart';

class ImageCardCustomText extends StatelessWidget {
  final String imageUrl;
  final Widget textWidget;
  final double cardWidth;

  const ImageCardCustomText({this.imageUrl, this.textWidget, this.cardWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      child:
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(10.0),
          elevation: 10,
          color: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
              child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: FadeInImage(
                        placeholder: AssetImage('assets/img/loading.gif'),
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.fitWidth,
                        width: cardWidth,
                        height: cardWidth * 0.32,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: textWidget
                    )
                  ],
                ),
            ),
        )
    );
  }
}
