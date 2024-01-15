import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
class AppImages {
  static final AppImages _instance = AppImages._internal();

  factory AppImages() => _instance;

  AppImages._internal();

  static const String _imagePath = 'assets/images/';
  static const String _iconPath = '${_imagePath}icons/';

  AppImage get youngwoojiyeon1 =>
      const AppImage('${_imagePath}youngwoojiyeon1.jpeg');
  AppImage get youngwoojiyeon2 =>
      const AppImage('${_imagePath}youngwoojiyeon2.jpeg');
  AppImage get youngwoojiyeon3 =>
      const AppImage('${_imagePath}youngwoojiyeon3.jpeg');
  AppImage get youngwoojiyeon4 =>
      const AppImage('${_imagePath}youngwoojiyeon4.jpeg');
  AppImage get youngwoojiyeon5 =>
      const AppImage('${_imagePath}youngwoojiyeon5.jpeg');
  AppImage get youngwoojiyeon6 =>
      const AppImage('${_imagePath}youngwoojiyeon6.jpeg');
  AppImage get youngwoojiyeon7 =>
      const AppImage('${_imagePath}youngwoojiyeon7.jpeg');
  AppImage get youngwoojiyeon8 =>
      const AppImage('${_imagePath}youngwoojiyeon8.jpeg');
  AppImage get youngwoojiyeon9 =>
      const AppImage('${_imagePath}youngwoojiyeon9.jpeg');
  AppImage get youngwoojiyeon10 =>
      const AppImage('${_imagePath}youngwoojiyeon10.jpeg');
  AppImage get youngwoojiyeon11 =>
      const AppImage('${_imagePath}youngwoojiyeon11.jpeg');
  AppImage get youngwoojiyeon12 =>
      const AppImage('${_imagePath}youngwoojiyeon12.jpeg');
  AppImage get youngwoojiyeon13 =>
      const AppImage('${_imagePath}youngwoojiyeon13.jpeg');
  AppImage get youngwoojiyeon14 =>
      const AppImage('${_imagePath}youngwoojiyeon14.jpeg');
  AppImage get youngwoojiyeon15 =>
      const AppImage('${_imagePath}youngwoojiyeon15.jpeg');
  AppImage get youngwoojiyeon16 =>
      const AppImage('${_imagePath}youngwoojiyeon16.jpeg');
  AppImage get youngwoojiyeon17 =>
      const AppImage('${_imagePath}youngwoojiyeon17.jpeg');
  AppImage get youngwoojiyeon18 =>
      const AppImage('${_imagePath}youngwoojiyeon18.jpeg');
  AppImage get youngwoojiyeon19 =>
      const AppImage('${_imagePath}youngwoojiyeon19.jpeg');
  AppImage get youngwoojiyeon20 =>
      const AppImage('${_imagePath}youngwoojiyeon20.jpeg');
  AppImage get youngwoojiyeon21 =>
      const AppImage('${_imagePath}youngwoojiyeon21.jpeg');
  AppImage get youngwoojiyeon22 =>
      const AppImage('${_imagePath}youngwoojiyeon22.jpeg');
  AppImage get youngwoojiyeon23 =>
      const AppImage('${_imagePath}youngwoojiyeon23.jpeg');
  AppImage get youngwoojiyeon24 =>
      const AppImage('${_imagePath}youngwoojiyeon24.jpeg');
  AppImage get youngwoojiyeon25 =>
      const AppImage('${_imagePath}youngwoojiyeon25.jpeg');
  AppImage get youngwoojiyeon26 =>
      const AppImage('${_imagePath}youngwoojiyeon26.jpeg');
  AppImage get youngwoojiyeon27 =>
      const AppImage('${_imagePath}youngwoojiyeon27.jpeg');
  AppImage get youngwoojiyeon28 =>
      const AppImage('${_imagePath}youngwoojiyeon28.jpeg');
  AppImage get youngwoojiyeon29 =>
      const AppImage('${_imagePath}youngwoojiyeon29.jpeg');
  AppImage get youngwoojiyeon30 =>
      const AppImage('${_imagePath}youngwoojiyeon30.jpeg');
  AppImage get youngwoojiyeon31 =>
      const AppImage('${_imagePath}youngwoojiyeon31.jpeg');

  AppImage get couple =>
      const AppImage('${_imagePath}couple.png');
}

class AppImage {
  final String path;

  const AppImage(this.path);

  Image image({
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
  }) {
    return Image.asset(
      path,
      key: key,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imageSize({Key? key, double? size, BoxFit fit = BoxFit.fill}) {
    return Image.asset(
      path,
      key: key,
      width: size,
      height: size,
      fit: fit,
    );
  }
}
