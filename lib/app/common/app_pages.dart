import 'package:flutter_20240504/app/root/binding/root_page_binding.dart';
import 'package:flutter_20240504/app/root/ui/root_page.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  static const initialPage = AppRoutes.rootPage;

  static final pages = [
    GetPage(
      name: AppRoutes.rootPage,
      page: () => const RootPage(),
      bindings: [
        RootPageBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
