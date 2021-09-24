import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/nutritionist.dart';
import 'package:vguide/components/constants.dart' as Constants;

class NutritionistDetails extends StatelessWidget {
  final Nutritionist nutritionist;
  final Color pageColor;

  const NutritionistDetails({this.nutritionist, this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Constants.boxDecorationRadius),
                      topRight: Radius.circular(Constants.boxDecorationRadius),
                      bottomLeft: Radius.circular(
                          Constants.boxDecorationRadius),
                      bottomRight: Radius.circular(
                          Constants.boxDecorationRadius),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          image: DecorationImage(
                              image: nutritionist.picURL != null
                                  ? NetworkImage(nutritionist.picURL)
                                  : AssetImage(nutritionist.picURL),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Text(nutritionist.name),
                    ],
                  ),
                ), //Top Data
                getSizedBox(40),
                Container(
                  padding: EdgeInsets.all(50.0),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Constants.boxDecorationRadius),
                      topRight: Radius.circular(Constants.boxDecorationRadius),
                      bottomLeft: Radius.circular(
                          Constants.boxDecorationRadius),
                      bottomRight: Radius.circular(
                          Constants.boxDecorationRadius),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      getDataTitles('Ubicación', Entypo.location_pin),
                      Text(nutritionist.address),
                      getSizedBox(20),
                      getDataTitles('Teléfono', Entypo.old_phone),
                      Text(nutritionist.phoneNumber),
                      getSizedBox(20),
                      getDataTitles('Contacto', Entypo.mail),
                      Text(nutritionist.email),
                      getSizedBox(20),
                      getDataTitles('Social Media', Entypo.instagram),
                      Text(nutritionist.socialMedia),
                    ],
                  ),
                ),
                // NutritionistSectionWidget(),
              ],
            ),
          )),
    );
  }

  Widget getDataTitles(String title, IconData logo) => Container(
        child: Row(
          children: <Widget>[
            Icon(
              logo,
              color: Colors.red.shade300,
            ),
            SizedBox(
              width: 10,
            ),
            Text(title, style: VGuideTextStyles.header)
          ],
        ),
      );

  Widget getSizedBox(double size) => SizedBox(
        height: size,
      );

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      elevation: 0,
    );
  }
}