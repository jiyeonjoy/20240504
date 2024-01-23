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
            <script type="text/javascript" src='https://dapi.kakao.com/v2/maps/sdk.js?autoload=true&appkey=7047bd8eeaeb999d573881f23d55b160'></script>
        </head>
        <body style="padding:0; margin:0;">
            <div id='map' style="width:300px;height:300px;margin: 0 auto;border-radius: 8px;" />
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                    mapOption = {
                        center: new kakao.maps.LatLng(37.502205, 127.001139), // 지도의 중심좌표
                        level: 3,
                        draggable: false,
                    };
  
                var map = new kakao.maps.Map(mapContainer, mapOption);  
                var markerPosition = new kakao.maps.LatLng(37.50083002236247, 127.00319198989602);  
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });  
                marker.setMap(map);
  
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
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 300,
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
