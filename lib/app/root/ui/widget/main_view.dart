import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 550,
          child: R.image.youngwoojiyeonMain.image(
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: edgeInsets(top: 50, horizontal: 20),
          child: Text(
            '신  영  우\n그리고\n최  지  연',
            style: textStyleBlackNormal(30, height: 30/20),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: edgeInsets(top: 20, horizontal: 20, bottom: 60),
          child: Text(
            '2024. 05. 04. 토요일 PM 3:30\n아펠가모 반포 LL층',
            textAlign: TextAlign.center,
            style: textStyleBlackNormal(18, height: 25/15),
          ),
        ),
      ],
    );
  }
}
