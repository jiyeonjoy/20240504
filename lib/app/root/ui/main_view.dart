import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top;
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: height/2,
            child: R.image.couple.image(
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(flex: 2),
          Padding(
            padding: edgeInsets(horizontal: 20),
            child: Text(
              '신  영  우\n그리고\n최  지  연',
              style: textStyleBlack600(30, height: 30/20),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: edgeInsets(horizontal: 20),
            child: Text(
              '2024. 05. 04. 토요일 PM 3:00\n아펠가모 반포 LL층',
              textAlign: TextAlign.center,
              style: textStyleBlack600(18, height: 25/15),
            ),
          ),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
