import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vguide/components/rounded_button.dart';

class GenericCard extends StatelessWidget {
  final String id;
  final Widget content;
  final double cardWidth;
  final callback;

  const GenericCard({this.id, this.content, this.cardWidth, this.callback});

  void cardTapped() {
    callback(id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: cardWidth,
        child: GestureDetector(
            onTap: cardTapped,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.all(10.0),
              elevation: 2,
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Container(padding: EdgeInsets.all(10), child: content)
                  ],
                ),
              ),
            )));
  }
}
