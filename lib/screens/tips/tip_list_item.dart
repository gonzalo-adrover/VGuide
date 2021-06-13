import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TipListItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  TipListItem({this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
                fit: BoxFit.cover,
                height: 250,
              ),
            ), 
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                style: GoogleFonts.balsamiqSans(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700),
              ),
            )],
        ),
        )
      ),
    );
  }
}
