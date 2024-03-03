import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/title_view.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
        width: double.infinity,
        child: Column(
          children: [
            const TitleView('LOCATION'),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                String userAgent = window.navigator.userAgent.toLowerCase();
                if (userAgent.contains('android') || userAgent.contains('iphone')) {
                  Uri url = Uri.parse('kakaomap://place?id=1807085957');
                  launchUrl(url);
                } else {
                  Uri url = Uri.parse('https://m.map.kakao.com/actions/detailMapView?id=1807085957&refService=place');
                  launchUrl(url);
                }
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: R.image.map.image(
                    width: 300,
                    height: 250,
                    fit: BoxFit.cover
                  )),
            ),
            const SizedBox(height: 8),
            Text(
              '지도를 클릭하시면 카카오 맵으로 연결됩니다.',
              style: textStyleNormal(R.color.color_594E47, 15),
            ),
            const SizedBox(height: 30),
            Text(
              '24년 5월 4일 토요일 오후 3시 30분',
              style: textStyleBold(R.color.color_594E47, 17),
            ),
            Text(
              '아펠가모 반포 LL층 (지하 2층)',
              style: textStyleBold(R.color.color_594E47, 17),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '지하철',
                  style: textStyleBold(R.color.color_594E47, 17),
                ),
                const SizedBox(height: 4),
                Text(
                  '고속터미널역(3,7,9호선) 5번 출구 방향으로 나와\n서래공원 방면 신호등 건넌 후 첫번째 건물\n(반포 효성빌딩) LL층 (지하 2층)',
                  style: textStyleNormal(R.color.color_594E47, 15),
                ),
                const SizedBox(height: 20),
                Text(
                  '버스',
                  style: textStyleBold(R.color.color_594E47, 17),
                ),
                const SizedBox(height: 4),
                Text(
                  '간선 : 405, 740 / 지선 : 5413 / 공항버스 : 6703\n서울 지방 조달청역 하차. 반포 효성빌딩 LL층(지하 2층)',
                  style: textStyleNormal(R.color.color_594E47, 15),
                ),
              ],
            )
          ],
        ));
  }
}
