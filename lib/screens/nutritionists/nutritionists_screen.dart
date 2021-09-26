import 'package:flutter/material.dart';
import 'package:vguide/components/generic_card.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/data/nutritionists_data.dart';
import 'package:vguide/domain/model/nutritionist.dart';
import 'package:vguide/screens/nutritionists/nutritionist_details_screen.dart';

class NutritionistsScreen extends StatefulWidget {
  static Color pageColor = Color.fromRGBO(76, 92, 155, 1);

  @override
  State<StatefulWidget> createState() => _NutritionistsScreenState();
}

class _NutritionistsScreenState extends State<NutritionistsScreen> {
  Nutritionist selectedNutritionist = NutritionistData.getNutritionists[0];
  bool isNutritionistSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NutritionistsScreen.pageColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: NutritionistsScreen.pageColor,
        title: Text("Nutricionistas"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: NutritionistDetails(
                  nutritionist: selectedNutritionist,
                  pageColor: NutritionistsScreen.pageColor),
            ),
            Container(
              child: NutritionistSectionWidget(
                isNutritionistSelected: isNutritionistSelected,
                selectedNutritionist: selectedNutritionist,
                onNutritionistSelected: onNutritionistSelected,
              )
            )
          ],
        ),
      ),
    );
  }

  void clearSelection() {
    setState(() {
      isNutritionistSelected = false;
    });
  }

  void onNutritionistSelected(String nutritionistName) {
    setState(() {
      if (isNutritionistSelected &&
          selectedNutritionist.name == nutritionistName) {
        clearSelection();
      } else {
        selectedNutritionist = NutritionistData.getNutritionists.firstWhere(
            (element) => element.name == nutritionistName,
            orElse: () => NutritionistData.getNutritionists[0]);
        isNutritionistSelected = true;
      }
    });
  }
}

class NutritionistSectionWidget extends StatelessWidget {
  final bool isNutritionistSelected;
  final Nutritionist selectedNutritionist;
  final Function onNutritionistSelected;
  final Function onCardPressed;

  const NutritionistSectionWidget(
      {this.isNutritionistSelected,
      this.selectedNutritionist,
      this.onNutritionistSelected,
      this.onCardPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: NutritionistData.getNutritionists.length,
          itemBuilder: (context, index) =>
              NutritionistCard(NutritionistData.getNutritionists[index])),
    );
  }

  Widget NutritionistCard(Nutritionist nutritionist) => GenericCard(
        id: nutritionist.name,
        content: _nutritionistTextWidget(nutritionist),
        cardWidth: 150.0,
        callback: onNutritionistSelected,
      );

  Widget _nutritionistTextWidget(Nutritionist nutritionist) => Container(
        child: Column(
          children: [
            Text(
              nutritionist.name,
              style: VGuideTextStyles.subheader,
            ),
            SizedBox(height: 10.0),
            Text(
              nutritionist.socialMedia,
              style: VGuideTextStyles.bodySmall,
            )
          ],
        ),
      );
}
