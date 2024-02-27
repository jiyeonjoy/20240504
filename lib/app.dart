import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/app_pages.dart';
import 'package:get/get.dart';

class WeddingInvitationApp extends StatefulWidget {
  const WeddingInvitationApp({super.key});

  @override
  State<WeddingInvitationApp> createState() => _WeddingInvitationAppState();
}

class _WeddingInvitationAppState extends State<WeddingInvitationApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '신영우 ♥ 최지연 결혼합니다.',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
      theme: ThemeData(
        fontFamily: 'defaultFont',
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoEffectBehavior(),
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

class NoEffectBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
