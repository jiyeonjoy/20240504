import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_images.dart';
import 'app_text.dart';

class R {
  static AppColors get color => AppColors();

  static AppImages get image => AppImages();

  static AppTexts get string => AppTexts();

  static RFontWeight get fontWeight => RFontWeight();
}

class RFontWeight {
  static const RFontWeight _instance = RFontWeight._internal();

  factory RFontWeight() => _instance;

  const RFontWeight._internal();

  final FontWeight light = FontWeight.w200;

  final FontWeight fontWeight300 = FontWeight.w300;

  final FontWeight normal = FontWeight.normal;

  final FontWeight medium = FontWeight.w500;

  final FontWeight fontWeight600 = FontWeight.w600;

  final FontWeight bold = FontWeight.bold;
}

enum FontFamily {
  defaultFont('defaultFont'),
  nexonGothicFont('nexonGothicFont'),
  cormorantGaramondFont('cormorantGaramondFont');

  final String text;

  const FontFamily(this.text);
}

TextStyle textStyleLight(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.light,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleLightCancelLine(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.light,
        decoration: TextDecoration.lineThrough,
        height: height);

TextStyle textStyle300(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.fontWeight300,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleNormal(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.normal,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleMedium(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.medium,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleMediumUnderLine(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.medium,
        decoration: TextDecoration.underline,
        height: height);

TextStyle textStyle600(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.fontWeight600,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBold(Color color, double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: color,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.bold,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBlackLight(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.black,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.light,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBlackNormal(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.black,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.normal,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBlackMedium(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.black,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.medium,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBlack600(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.black,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.fontWeight600,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleBlackBold(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.black,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.bold,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleWhiteLight(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.white,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.light,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleWhiteNormal(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.white,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.normal,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleWhiteMedium(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.white,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.medium,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleWhite600(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.white,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.fontWeight600,
        decoration: TextDecoration.none,
        height: height);

TextStyle textStyleWhiteBold(double size,
        {double? height, FontFamily? fontFamily = FontFamily.defaultFont}) =>
    TextStyle(
        color: R.color.white,
        fontFamily: fontFamily?.text,
        fontSize: size,
        fontWeight: R.fontWeight.bold,
        decoration: TextDecoration.none,
        height: height);
