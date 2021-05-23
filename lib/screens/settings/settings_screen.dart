import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static Color pageColor = Colors.black45;

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
        Center(
          child: Text(
            "Settings",
            style: TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        ListTile(
          title: Text('Send me marketing emails'),
          trailing: Switch.adaptive(
            value: switch1,
            onChanged: (value) => setState(() => switch1 = value),
          ),
        ),
        ListTile(
          title: Text('Enable notifications'),
          trailing: Switch.adaptive(
            value: switch2,
            onChanged: (value) => setState(() => switch2 = value),
          ),
        ),
        ListTile(
          title: Text('Remind me to rate this app'),
          trailing: Switch.adaptive(
            value: switch3,
            onChanged: (value) => setState(() => switch3 = value),
          ),
        ),
        ListTile(
          title: Text('Recommend me stores based on my location'),
          trailing: Switch.adaptive(
            value: switch4,
            onChanged: (value) => setState(() => switch4 = value),
          ),
        ),
        ListTile(
          title: Text('Find friends from my contact list'),
          trailing: Switch.adaptive(
            value: switch5,
            onChanged: (value) => setState(() => switch5 = value),
          ),
        ),
      ],
    );
  }

  Widget _build(BuildContext context) {
    return Container(
      color: SettingsScreen.pageColor,
      child: _buildList(),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _build,
    );
  }
}
