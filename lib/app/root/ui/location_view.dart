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
              onTap: () {
                // launchUrl(Uri.parse('kakaomap://place?id=1807085957'));
                launchUrl(Uri.parse('https://m.map.kakao.com/actions/detailMapView?id=1807085957&refService=place'));
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
          ],
        ));
  }
}
