import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class GreetingView extends StatelessWidget {
  const GreetingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.color_ECDCC2,
      child: Column(
        children: [
          Padding(
            padding: edgeInsets(horizontal: 100, top: 70, bottom: 50),
            child: R.image.banner.image(),
          ),
          Text(
            '서로가 마주보며 다져온 사랑을\n이제 함께 한 곳을 바라보며\n걸어갈 수 있는 큰 사랑으로 키우고자 합니다.\n저희 두 사람이 사랑의 이름으로\n지켜나갈 수 있게 앞날을\n축복해 주시면 감사하겠습니다.',
            style: textStyle300(R.color.color_1E403A, 20, height: 40/20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}
