import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:get/get.dart';

Future<T> contactDialog<T>() async {
  return await Get.generalDialog(
      barrierDismissible: true,
      barrierLabel: Get.context != null
          ? MaterialLocalizations.of(Get.context!).dialogLabel
          : null,
      pageBuilder: (context, _, __) {
        return Container(
          margin: edgeInsets(all: 30),
          alignment: Alignment.center,
          child: Card(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: R.color.white,
            elevation: 5,
            child: Padding(
              padding: edgeInsets(top: 10, bottom: 30, horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  R.image.icon_bee.image(),
                  const SizedBox(height: 5),
                  Text(
                    '혼주에게 연락하기',
                    style: textStyleBlackBold(24),
                  ),
                  const SizedBox(height: 40),
                  _buildContactRow('신랑 부', '신종식'),
                  _buildContactRow('신랑 모', '손희송'),
                  _buildContactRow('신부 부', '최성식'),
                  _buildContactRow('신부 모', '허인숙'),
                ],
              ),
            ),
          ),
        );
      });
}

Widget _buildContactRow(String title, String name) {
  return SizedBox(
    height: 50,
    child: Row(
      children: [
        Text(
          title,
          style: textStyleLight(R.color.color_171819, 20),
        ),
        const Spacer(),
        Text(
          name,
          style: textStyleBlackBold(24),
        ),
        const Spacer(),
        Padding(
          padding: edgeInsets(top: 5),
          child: IconButton(
            onPressed: () {},
            icon: R.image.icon_phone.image(width: 24),
          ),
        ),
        Padding(
          padding: edgeInsets(top: 5),
          child: IconButton(
            onPressed: () {},
            icon: R.image.icon_email.image(width: 24),
          ),
        ),
      ],
    ),
  );
}
