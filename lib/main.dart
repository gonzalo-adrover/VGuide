import 'package:flutter/material.dart';
import 'package:vguide/screens/registration/register_age_screen.dart';
import 'package:vguide/screens/registration/register_diet_screen.dart';
import 'package:vguide/screens/registration/register_gender_screen.dart';
import 'package:vguide/screens/registration/register_weight_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(VGuide());
}

class VGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => WelcomeScreen(),
        RegisterDietScreen.id : (context) => RegisterDietScreen(),
        RegisterAgeScreen.id : (context) => RegisterAgeScreen(),
        RegisterGenderScreen.id : (context) => RegisterGenderScreen(),
        RegisterWeightScreen.id : (context) => RegisterWeightScreen(),
      },
    );
  }
}