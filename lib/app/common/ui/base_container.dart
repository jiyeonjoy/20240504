import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;

  const BaseContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Stack(
          children: [
            Positioned.fill(
                child: R.image.bg_img_white.image(
              repeat: ImageRepeat.repeat,
            )),
            Container(
              constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
