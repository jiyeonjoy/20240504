import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Center(
          child: Text(
            'Root Page!!'
          ),
        ),
      ),
    );
  }
}
