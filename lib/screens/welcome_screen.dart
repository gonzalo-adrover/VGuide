import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:vguide/components/rounded_button.dart';
import 'package:vguide/screens/deprecated/register_diet_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'V',
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TypewriterAnimatedTextKit(
                      text: [
                        "Guide",
                        "egan",
                        "egetarian",
                      ],
                      speed: const Duration(milliseconds: 250),
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  'Plant based diets made easy',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: "Start",
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegisterDietScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
