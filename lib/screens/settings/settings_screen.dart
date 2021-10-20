import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  var switch1 = false;
  var switch2 = true;
  var switch3 = true;
  var switch4 = false;
  var switch5 = false;

  Widget _buildList() {
    return ListView(
      children: [
        Padding(padding: EdgeInsets.only(top: 24)),
        ListTile(
          title: Text('Remojá tus legumbres.'),
          tileColor: SettingsScreen.tileColor,
          trailing: Switch.adaptive(
            value: switch1,
            onChanged: (value) => setState(() => switch1 = value),
          ),
        ),
        ListTile(
          title: Text('¡No olvides tomar agua!'),
          tileColor: SettingsScreen.tileColor,
          trailing: Switch.adaptive(
            value: switch2,
            onChanged: (value) => setState(() => switch2 = value),
          ),
        ),
        ListTile(
          title: Text('No olvides tomar tu vitamina B12.'),
          tileColor: SettingsScreen.tileColor,
          trailing: Switch.adaptive(
            value: switch3,
            onChanged: (value) => setState(() => switch3 = value),
          ),
        ),
      ],
    );
  }

  Widget _build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificaciones"),
        backgroundColor: Colors.deepOrange.shade200,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: SettingsScreen.pageColor,
      body: _buildList(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _build,
    );
  }
}
