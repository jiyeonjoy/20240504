import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
class AppImages {
  static final AppImages _instance = AppImages._internal();

  factory AppImages() => _instance;

  AppImages._internal();

  static const String _imagePath = 'assets/images/';
  static const String _iconPath = '${_imagePath}icons/';
  static const String _youngwoojiyeonPath = '${_imagePath}youngwoo_jiyeon/';

  AppImage get youngwoojiyeon1 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_1.jpeg');
  AppImage get youngwoojiyeon2 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_2.jpeg');
  AppImage get youngwoojiyeon3 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_3.jpeg');
  AppImage get youngwoojiyeon4 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_4.jpeg');
  AppImage get youngwoojiyeon5 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_5.jpeg');
  AppImage get youngwoojiyeon6 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_6.jpeg');
  AppImage get youngwoojiyeon7 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_7.jpeg');
  AppImage get youngwoojiyeon8 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_8.jpeg');
  AppImage get youngwoojiyeon9 =>
      const AppImage('${_youngwoojiyeonPath}youngwoo_jiyeon_9.jpeg');

  AppImage get couple =>
      const AppImage('${_imagePath}couple.png');
  AppImage get banner =>
      const AppImage('${_imagePath}banner.png');
  AppImage get thankYou =>
      const AppImage('${_imagePath}thankYou.png');
  AppImage get bg_img_white => const AppImage('${_imagePath}bg_img_white.jpg');
  AppImage get map => const AppImage('${_imagePath}map.png');

  AppImage get icon_flower =>
      const AppImage('${_iconPath}flower.png');
  AppImage get icon_botanical =>
      const AppImage('${_iconPath}botanical.png');
  AppImage get icon_phone_round =>
      const AppImage('${_iconPath}phone_round.png');
  AppImage get icon_phone =>
      const AppImage('${_iconPath}phone.png');
  AppImage get icon_email =>
      const AppImage('${_iconPath}email.png');
  AppImage get icon_bee =>
      const AppImage('${_iconPath}bee.png');
}

class AppImage {
  final String path;

  const AppImage(this.path);

  Image image({
    Key? key,
    double? width,
    double? height,
    BoxFit? fit,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) {
    return Image.asset(
      path,
      key: key,
      width: width,
      height: height,
      fit: fit,
      repeat: repeat,
    );
  }

  Image imageSize({
    Key? key,
    double? size,
    BoxFit fit = BoxFit.fill,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) {
    return Image.asset(
      path,
      key: key,
      width: size,
      height: size,
      fit: fit,
      repeat: repeat,
    );
  }
}
