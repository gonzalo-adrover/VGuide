import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class VGuideTextStyles {
  static TextStyle header = GoogleFonts.balsamiqSans(
      fontSize: 16.0, fontWeight: FontWeight.w700, color: Colors.black54);

  static TextStyle subheader =
      GoogleFonts.raleway(fontSize: 14.0, fontWeight: FontWeight.w700);

  static TextStyle body =
      GoogleFonts.raleway(fontSize: 12.0, fontWeight: FontWeight.w500);

  static TextStyle chip =
      GoogleFonts.balsamiqSans(fontSize: 15.0, fontWeight: FontWeight.w300);

  static TextStyle mapDetailsHeaders =
      GoogleFonts.raleway(fontSize: 12.0, fontWeight: FontWeight.w700);

  static TextStyle mapDetailsBody =
      GoogleFonts.raleway(fontSize: 10.0, fontWeight: FontWeight.w500);

  static const servingInfoBorderColor = Color(0xffb0b0b0);

  static TextStyle detailsPreferredCategoryText(CupertinoThemeData themeData) =>
      themeData.textTheme.textStyle.copyWith(
        fontWeight: FontWeight.bold,
      );

  static TextStyle detailsTitleText(CupertinoThemeData themeData) =>
      themeData.textTheme.textStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );
}
