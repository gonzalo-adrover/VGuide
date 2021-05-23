import 'package:flutter/material.dart';
import 'package:vguide/components/utils.dart';
import 'package:vguide/components/widgets.dart';
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
  static const _itemsLength = 50;

  final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();

  List<MaterialColor> colors;
  List<String> nutrientsNames;

  @override
  void initState() {
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
          // nutrient: nutrientsNames[index], To be used when having a loaded list of Nutrients
          nutrient: 'Nutrient ' + index.toString(),
          color: color,
          heroAnimation: AlwaysStoppedAnimation(0),
          onPressed: () {
            Navigator.pushNamed(context, Nutrient.id);
          },
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
