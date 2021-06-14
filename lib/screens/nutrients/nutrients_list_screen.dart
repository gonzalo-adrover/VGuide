import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:vguide/components/utils.dart';
import 'package:vguide/components/widgets.dart';
import 'package:vguide/data/source/local/nutrients_data.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/nutrient_screen.dart';
import 'package:vguide/data/nutrients_data.dart';
import 'package:vguide/screens/nutrients/nutrient.dart';

class NutrientsScreen extends StatefulWidget {
  static Color pageColor = Colors.indigo.shade300;
  static const title = 'Nutrients';

  const NutrientsScreen({Key key, this.androidDrawer}) : super(key: key);
  final Widget androidDrawer;

  @override
  _NutrientsTabState createState() => _NutrientsTabState();
}

class _NutrientsTabState extends State<NutrientsScreen> {
  List<NutrientListItem> nutrientsList;
  static const _itemsLength = 10;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  List<MaterialColor> colors;
  List<String> nutrientsNames;

  @override
  void initState() {
    NutrientsData nutData = new NutrientsData();
    nutrientsList = nutData.getNutrients();
    log(nutrientsList[0].longDesc);
    _setData();
    super.initState();
  }

  void _setData() {
    colors = getRandomColors(_itemsLength);
    // nutrientsNames = getRandomNames(_itemsLength);
  }

  Future<void> _refreshData() {
    return Future.delayed(
      // This is just an arbitrary delay that simulates some network activity.
      const Duration(seconds: 1),
      () => setState(() => _setData()),
    );
  }

  Widget _listBuilder(BuildContext context, int index) {
    if (index >= _itemsLength) return Container();

    final color = colors[index];

    return SafeArea(
      top: false,
      bottom: false,
      child: Hero(
        tag: index,
        child: HeroAnimatingNutrientCard(
          nutrient: nutrientsList[index].name, //genera error al cargar la lista si se scrollea hasta abajo - ver como pasarle este parametro sin que se rompa
          color: color,
          heroAnimation: AlwaysStoppedAnimation(0),
          onPressed: () => Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => NutrientScreen(
                name: nutrientsList[index].name,
                shortDesc: nutrientsList[index].shortDesc,
                longDesc: nutrientsList[index].longDesc,
                pageColor: color,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _build(BuildContext context) {
    return Container(
      color: NutrientsScreen.pageColor,
      padding: EdgeInsets.only(top: 30),
      child: RefreshIndicator(
        color: NutrientsScreen.pageColor,
        key: _androidRefreshKey,
        onRefresh: _refreshData,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 12),
          itemCount: _itemsLength,
          itemBuilder: _listBuilder,
        ),
      ),
    );
  }

  @override
  Widget build(context) {
    return PlatformWidget(
      androidBuilder: _build,
    );
  }
}
