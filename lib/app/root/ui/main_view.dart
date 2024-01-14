import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: edgeInsets(top: 80, bottom: 30, horizontal: 20),
          child: Text('우 리 결 혼 합 니 다', style: textStyleBlack600(20)),
        ),
        Container(
            constraints: const BoxConstraints(minWidth: 100, maxWidth: 700),
            margin: edgeInsets(horizontal: 50),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 5/4,
                child: R.image.youngwoojiyeon15.image(
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ),
        Padding(
          padding: edgeInsets(top: 30, bottom: 10, horizontal: 20),
          child: Text('신영우 * 최지연', style: textStyleBlack600(20)),
        ),
        Padding(
          padding: edgeInsets(bottom: 80, horizontal: 20),
          child: Text(
            '2024. 05. 04. 토요일 PM 3:00\n아펠가모 반포 LL층',
            textAlign: TextAlign.center,
            style: textStyleBlack600(15),
          ),
        ),
      ],
    );
  }
}
