import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:get/get.dart';

class CommonSnackBar {
  static DateTime? showSnackBarTime;

  static void show(
      String text, {
        int? dismissMilliseconds,
        Color? backgroundColor,
      }) {
    DateTime now = DateTime.now();
    bool enabled = showSnackBarTime == null ||
        now.difference(showSnackBarTime!) >
            Duration(milliseconds: dismissMilliseconds ?? 1500);
    if (enabled) {
      showSnackBarTime = now;
      Get.showSnackbar(
        GetSnackBar(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 20,
          ),
          messageText: Container(
            margin: edgeInsets(
              horizontal: 16,
            ),
            alignment: Alignment.center,
            child: Stack(
              fit: StackFit.loose, //Magic
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(57),
                    color: R.color.black.withOpacity(0.7),
                  ),
                  padding: edgeInsets(
                    horizontal: 24,
                    vertical: 10,
                  ),
                  child: Column(children: [
                    Text(
                      text,
                      maxLines: 1,
                      style: textStyleWhiteNormal(14),
                      softWrap: true,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          snackPosition: SnackPosition.BOTTOM,
          forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
          reverseAnimationCurve: const Cubic(0.5, 0.04, 1.0, 0.18), // 빨리 사라지기
          isDismissible: true,
          duration: const Duration(
            milliseconds: 1500,
          ),
        ),
      );
    }
  }
}
