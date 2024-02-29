import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/toggle_view.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';

class TransferView extends StatelessWidget {
  const TransferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsets(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          R.image.icon_botanical.image(),
          const SizedBox(height: 20),
          ToggleView(
            RootPageController.to.youngWooTransferData
          ),
          const SizedBox(height: 10),
          ToggleView(
              RootPageController.to.jiYeonTransferData
          ),
        ],
      ),
    );
  }
}
