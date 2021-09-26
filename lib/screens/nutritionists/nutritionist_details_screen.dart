import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/components/rounded_button.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/nutritionist.dart';
import 'package:vguide/components/constants.dart' as Constants;
import 'package:url_launcher/url_launcher.dart';

class NutritionistDetails extends StatelessWidget {
  final Nutritionist nutritionist;
  final Color pageColor;

  const NutritionistDetails({this.nutritionist, this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 92, 155, 1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: getBoxDecoration(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: Offset(
                                      5, 5), // changes position of shadow
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              image: DecorationImage(
                                  image: NetworkImage(nutritionist.picURL)),
                            )),
                        getSizedBoxWidth(20),
                        Text(nutritionist.name, style: VGuideTextStyles.header),
                      ])),
              getSizedBoxHeight(30),
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: getBoxDecoration(),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      getDataTitles('Ubicación', Entypo.location_pin),
                      getSizedBoxHeight(5),
                      getDataInfo(nutritionist.address),
                      getSizedBoxHeight(20),
                      getDataTitles('Teléfono', Entypo.old_phone),
                      getSizedBoxHeight(5),
                      getDataInfo(nutritionist.phoneNumber),
                      getSizedBoxHeight(20),
                      getDataTitles('Contacto', Entypo.mail),
                      getSizedBoxHeight(5),
                      getDataInfo(nutritionist.email),
                      getSizedBoxHeight(20),
                      getDataTitles('Social Media', Entypo.instagram),
                      getSizedBoxHeight(5),
                      getDataInfo(nutritionist.socialMedia),
                      getSizedBoxHeight(10),
                      RoundedButton(
                        title: "Contactar",
                        color: Colors.lightBlueAccent,
                        onPressed: () async {
                          String url = "https://www.instagram.com/"+nutritionist.socialMedia.toString();
                          var urllaunchable = await canLaunch(url); //canLaunch is from url_launcher package
                          if(urllaunchable){
                            await launch(url); //launch is from url_launcher package to launch URL
                          }else{
                            print("URL can't be launched.");
                          }
                        },
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
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

  Widget getDataInfo(String data) => Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Text(data, style: VGuideTextStyles.body)
          ],
        ),
      );

  Widget getSizedBoxHeight(double size) => SizedBox(
        height: size,
      );

  Widget getSizedBoxWidth(double size) => SizedBox(
        width: size,
      );

  BoxDecoration getBoxDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Constants.boxDecorationRadius),
          topRight: Radius.circular(Constants.boxDecorationRadius),
          bottomLeft: Radius.circular(Constants.boxDecorationRadius),
          bottomRight: Radius.circular(Constants.boxDecorationRadius),
        ),
      );

}
