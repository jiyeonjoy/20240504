import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:flutter_20240504/app/root/ui/contact_view.dart';
import 'package:flutter_20240504/app/root/ui/gallery_view.dart';
import 'package:flutter_20240504/app/root/ui/greeting_view.dart';
import 'package:flutter_20240504/app/root/ui/location_view.dart';
import 'package:flutter_20240504/app/root/ui/main_view.dart';
import 'package:flutter_20240504/app/root/ui/transfer_view.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: MainView()),
            SliverToBoxAdapter(child: GreetingView()),
            SliverToBoxAdapter(child: ContactView()),
            SliverToBoxAdapter(child: GalleryView()),
            SliverToBoxAdapter(child: LocationView()),
            SliverToBoxAdapter(child: TransferView()),
          ],
        ),
      ),
    );
  }
}
