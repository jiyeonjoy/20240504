import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/title_view.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
        child: Column(
          children: [
            const TitleView('LOCATION'),
            const SizedBox(height: 30),
            Container(
              constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
              height: 400,
              child: Center(
                child: PlatformWebViewWidget(
                  PlatformWebViewWidgetCreationParams(
                      controller: RootPageController.to.webViewController,
                  ),
                ).build(context),
              ),
            )
          ],
        ));
  }
}
