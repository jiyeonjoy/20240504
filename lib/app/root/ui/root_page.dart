import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/base_container.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:flutter_20240504/app/root/ui/widget/calendar_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/contact_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/copy_url_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/gallery_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/greeting_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/location_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/main_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/transfer_view.dart';
import 'package:flutter_20240504/app/root/ui/widget/video_view.dart';
import 'package:get/get.dart';

class RootPage extends GetView<RootPageController> {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.color_333333,
      body: const SafeArea(
        bottom: false,
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [
            BaseContainer(
              child: Column(
                children: [
                  MainView(),
                  GreetingView(),
                  ContactView(),
                  CalendarView(),
                  GalleryView(),
                  VideoView(),
                  LocationView(),
                  TransferView(),
                  CopyUrlView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
