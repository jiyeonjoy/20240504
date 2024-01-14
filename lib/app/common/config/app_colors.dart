import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

  final Color transparent = Colors.transparent;
  final Color black = Colors.black;
  final Color white = Colors.white;

  final Color color_171819 = const Color(0xFF171819);
  final Color color_36393D = const Color(0xFF36393D);
  final Color color_51565C = const Color(0xFF51565C);
  final Color color_6E747A = const Color(0xFF6E747A);
  final Color color_8C9299 = const Color(0xFF8C9299);
  final Color color_F8F9FA = const Color(0xFFF8F9FA);
  final Color color_EEF0F3 = const Color(0xFFEEF0F3);

  final Color color_0064FF = const Color(0xFF0064FF);
  final Color color_FDE8E4 = const Color(0xFFFDE8E4);
  final Color color_3D8BFF = const Color(0xFF3D8BFF);
  final Color color_F91E30 = const Color(0xFFF91E30);
}
