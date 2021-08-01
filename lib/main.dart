import 'package:flutter/material.dart';
import 'package:vguide/screens/vguide_pages.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(VGuide());
}

class VGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        VGuidePages.id: (context) => VGuidePages()
      },
    );
  }
}
