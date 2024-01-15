import 'package:flutter/services.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  Future<Uint8List> _readFileBytes(String filePath) async {
    ByteData bd = await rootBundle.load(filePath);
    return bd.buffer.asUint8List(bd.offsetInBytes, bd.lengthInBytes);
  }

  Future<List<Uint8List>> loadFallingImage() async {
    final Uint8List heart = await _readFileBytes("./assets/images/heart.png");
    return [heart];
  }
}
