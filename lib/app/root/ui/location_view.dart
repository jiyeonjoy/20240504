import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/title_view.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:webview_universal/webview_universal.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {

  @override
  void initState() {
    super.initState();
    task();
  }

  Future<void> task() async {
    await RootPageController.to.webViewController.init(
      context: context,
      uri: Uri.parse(Uri.dataFromString(
        '''
        <!DOCTYPE html>
        <html>
        <head>
        </head>
        <body style="padding:0; margin:0;">
            <img id='map' src="https://jiyeonjoy.github.io/20240504/icons/map.png" 
            style="width:300px;height:300px;margin: 0 auto;border-radius: 8px;"/>
            <script>
                window.onload = function() {
                    var map = document.getElementById("map");
                    map.onclick = moveMap;
                }
                function moveMap() {
                    return window.open("https://map.kakao.com/link/to/1807085957", "_blank")
                }
            </script>
        </body>
        </html>
        ''',
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8'),
      ).toString()),
      setState: (void Function() fn) {  },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
        child: Column(
          children: [
            const TitleView('LOCATION'),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 310,
              child: WebView(
                controller: RootPageController.to.webViewController,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '지도를 클릭하시면 카카오 맵으로 연결됩니다.',
              style: textStyleNormal(R.color.color_594E47, 15),
            ),
            const SizedBox(height: 30),
          ],
        ));
  }
}
