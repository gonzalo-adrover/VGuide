import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/screens/nutrients/nutrients_list_screen.dart';
import 'package:vguide/screens/nutritionists/nutritionists_screen.dart';
import 'package:vguide/screens/recipes/recipes_screen.dart';
import 'package:vguide/screens/settings/settings_screen.dart';
import 'package:vguide/screens/stores/stores_screen.dart';
import 'package:vguide/screens/tips/tips_screen.dart';

class VGuidePages extends StatefulWidget {
  static const String id = 'vguide_pages';
  @override
  _VGuidePagesState createState() => _VGuidePagesState();
}

class _VGuidePagesState extends State<VGuidePages> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  List<Widget> pages = [
    RecipesScreen(),
    TipsScreen(),
    NutrientsScreen(),
    StoresScreen(),
    NutritionistsScreen(),
    SettingsScreen()
  ];

  List<Color> pageColors = [
    RecipesScreen.pageColor,
    TipsScreen.pageColor,
    NutrientsScreen.pageColor,
    StoresScreen.pageColor,
    NutritionistsScreen.pageColor,
    SettingsScreen.pageColor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Entypo.bowl, size: 30, color: Colors.green),
            Icon(Entypo.light_bulb, size: 30, color: Colors.green),
            Icon(Entypo.leaf, size: 30, color: Colors.green),
            Icon(Entypo.shop, size: 30, color: Colors.green),
            Icon(Entypo.v_card, size: 30, color: Colors.green),
            Icon(Entypo.bell, size: 30, color: Colors.green),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: pageColors[_page],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          child: pages[_page],
        ));
  }
}
