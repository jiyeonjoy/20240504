import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/title_view.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
      padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
      child: const Column(
        children: [
          TitleView('G A L L E R Y'),
        ],
      )
    );
  }
}
