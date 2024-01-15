import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';

class TransferView extends StatelessWidget {
  const TransferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.color_ECDCC2,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(
              minWidth: 100,
              maxWidth: 500,
            ),
            child: R.image.thankYou.image(
                fit: BoxFit.cover
            ),
          )
        ],
      ),
    );
  }
}
