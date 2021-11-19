import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/components/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static Color pageColor = Colors.deepOrange.shade50;
  static Color tileColor = Colors.deepOrange.shade200;

  static const title = 'Settings';
  static const iosIcon = Icon(CupertinoIcons.gear);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget _build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notificaciones"),
          backgroundColor: Colors.deepOrange.shade200,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: SettingsScreen.pageColor,
        body: Column(
          children: [
            Image.asset("assets/img/bell.gif"),
            Text("Muy pronto!", style: VGuideTextStyles.hugeHeader)
          ],
        ));
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _build,
    );
  }
}
