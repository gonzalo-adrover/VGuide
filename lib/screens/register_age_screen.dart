import 'package:flutter/material.dart';
import 'package:vguide/components/rounded_button.dart';
import 'package:vguide/components/text_input.dart';
import 'package:vguide/screens/register_weight_screen.dart';

class RegisterAgeScreen extends StatefulWidget {

  static const String id = 'register_age_screen';

  @override
  _RegisterAgeScreenState createState() => _RegisterAgeScreenState();
}

class _RegisterAgeScreenState extends State<RegisterAgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextInput(title: 'Enter something'),
            SizedBox(
              height: 8.0,
            ),
            TextInput(title: 'Enter something'),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: "Next",
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegisterWeightScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
