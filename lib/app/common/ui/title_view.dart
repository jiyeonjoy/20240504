import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';

class TitleView extends StatelessWidget {
  final String title;
  const TitleView(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        R.image.icon_flower.image(),
        Text(
          title,
          style: textStyle600(R.color.color_594E47, 30,
              fontFamily: FontFamily.nexonGothicFont),
        ),
      ],
    );
  }
}
