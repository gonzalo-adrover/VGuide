import 'package:flutter/material.dart';

class ListItemWithImage extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String imageSource;
  final Widget content;
  final Function onClick;

  ListItemWithImage(
      {this.id, this.imageUrl, this.imageSource, this.content, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClick,
        child: Container(
          child: Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: FadeInImage(
                      fadeInCurve: Curves.easeIn,
                      placeholder: AssetImage('assets/img/VGuideLogo.jpeg'),
                      image: imageUrl != null
                          ? NetworkImage(imageUrl)
                          : AssetImage(imageSource),
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                    ),
                  )),
              Container(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: content)
            ],
          ),
        ));
  }
}
