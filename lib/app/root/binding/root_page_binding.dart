import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:get/get.dart';

class RootPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RootPageController());
  }
}
