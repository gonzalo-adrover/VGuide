import 'package:flutter/material.dart';
import 'package:vguide/components/rounded_button.dart';
import 'package:vguide/components/text_input.dart';
import 'package:vguide/screens/register_gender_screen.dart';

class RegisterDietScreen extends StatefulWidget {

  static const String id = 'register_diet_screen';

  @override
  _RegisterDietScreenState createState() => _RegisterDietScreenState();
}

class _RegisterDietScreenState extends State<RegisterDietScreen> {
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
                Navigator.pushNamed(context, RegisterGenderScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
