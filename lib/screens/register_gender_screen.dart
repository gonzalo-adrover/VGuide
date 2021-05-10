import 'package:flutter/material.dart';
import 'package:vguide/components/rounded_button.dart';
import 'package:vguide/components/text_input.dart';
import 'package:vguide/screens/register_age_screen.dart';

class RegisterGenderScreen extends StatefulWidget {

  static const String id = 'register_gender_screen';

  @override
  _RegisterGenderScreenState createState() => _RegisterGenderScreenState();
}

class _RegisterGenderScreenState extends State<RegisterGenderScreen> {
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
                Navigator.pushNamed(context, RegisterAgeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
