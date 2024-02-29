import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/common_snackbar.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class CopyUrlView extends StatelessWidget {
  const CopyUrlView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets(horizontal: 20, top: 20, bottom: 40),
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(const ClipboardData(text: 'https://jiyeonjoy.github.io/20240504/'));
          CommonSnackBar.show('주소가 복사되었습니다.');
        },
        child: Container(
          color: R.color.black.withOpacity(0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              R.image.icon_link.imageSize(size: 20),
              const SizedBox(width: 4),
              Text(
                '초대장 주소 복사하기',
                style: textStyleMedium(R.color.color_171819, 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ),
    );
  }
}
