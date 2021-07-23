import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:vguide/components/utils.dart';
import 'package:vguide/components/widgets.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/nutrient_screen.dart';
import 'package:vguide/data/nutrients_data.dart';

import 'package:vguide/screens/tips/tip_list_item.dart';

class NutrientsScreen extends StatelessWidget {
  static Color pageColor = Colors.indigo.shade300;
  static const title = 'Nutrients';

  // const NutrientsScreen({Key key, this.androidDrawer}) : super(key: key);
  // final Widget androidDrawer;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: pageColor,
        child: ListView(children: getTipList()),
    );}
}

List<TipListItem> getTipList() {
  List<Nutrient> tipData = NutrientsData().getNutrients();
  List<TipListItem> tipListItem = tipData.map((nutrient) => TipListItem(
    title: nutrient.name,
    imageUrl: nutrient.picURL,
  )).toList();

  return tipListItem;
}
//
// class _NutrientsTabState extends State<NutrientsScreen> {
//   List<NutrientDetails> nutrientsList;
//   static const _itemsLength = 10;
//
//   final _androidRefreshKey = GlobalKey<RefreshIndicatorState>();
//
//   List<MaterialColor> colors;
//   List<String> nutrientsNames;
//
//   @override
//   void initState() {
//     NutrientsData nutData = new NutrientsData();
//     nutrientsList = nutData.getNutrients();
//     log(nutrientsList[0].longDesc);
//     _setData();
//     super.initState();
//   }
//
//   void _setData() {
//     colors = getRandomColors(_itemsLength);
//     // nutrientsNames = getRandomNames(_itemsLength);
//   }
//
//   Future<void> _refreshData() {
//     return Future.delayed(
//       // This is just an arbitrary delay that simulates some network activity.
//       const Duration(seconds: 1),
//       () => setState(() => _setData()),
//     );
//   }
//
//   Widget _listBuilder(BuildContext context, int index) {
//     if (index >= _itemsLength) return Container();
//
//     final color = colors[index];
//
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Hero(
//         tag: index,
//         child: HeroAnimatingNutrientCard(
//           nutrient: nutrientsList[index].name, //genera error al cargar la lista si se scrollea hasta abajo - ver como pasarle este parametro sin que se rompa
//           color: color,
//           heroAnimation: AlwaysStoppedAnimation(0),
//           onPressed: () => Navigator.of(conte0xt).push<void>(
//             MaterialPageRoute(
//               builder: (context) => NutrientScreen(
//                 name: nutrientsList[index].name,
//                 longDesc: nutrientsList[index].longDesc,
//                 foods: nutrientsList[index].foods,
//                 goodFoods: nutrientsList[index].goodFoods,
//                 pageColor: color,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _build(BuildContext context) {
//     return Container(
//       color: NutrientsScreen.pageColor,
//       padding: EdgeInsets.only(top: 30),
//       child: RefreshIndicator(
//         color: NutrientsScreen.pageColor,
//         key: _androidRefreshKey,
//         onRefresh: _refreshData,
//         child: ListView.builder(
//           padding: EdgeInsets.symmetric(vertical: 12),
//           itemCount: _itemsLength,
//           itemBuilder: _listBuilder,
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(context) {
//     return PlatformWidget(
//       androidBuilder: _build,
//     );
//   }
// }
