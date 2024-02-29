import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/zoom_widget.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';
import 'package:get/get.dart';

Future showImageDetailDialog(int index) {
  return Get.generalDialog(
      barrierDismissible: true,
      barrierLabel: Get.context != null
          ? MaterialLocalizations.of(Get.context!).dialogLabel
          : null,
      pageBuilder: (context, _, __) {
        return ImageDetailDialog(index);
      });
}

class ImageDetailDialog extends StatefulWidget {
  final int index;

  const ImageDetailDialog(this.index, {super.key});

  @override
  State<ImageDetailDialog> createState() => _ImageDetailDialogState();
}

class _ImageDetailDialogState extends State<ImageDetailDialog> {
  late SwiperController _swiperController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.index;
    _swiperController = SwiperController();
    _swiperController.index = _currentPage;
  }

  @override
  void dispose() {
    _swiperController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
        color: R.color.black,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Swiper(
              controller: _swiperController,
              itemCount: RootPageController.to.galleryList.length,
              itemBuilder: (context, index) {
                return ZoomWidget(
                  child: RootPageController.to.galleryList[index].image(
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
            ),
            Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: R.image.icon_close.imageSize(size: 24),
              ),
            ),
            Positioned(
              left: 0,
              child: IconButton(
                onPressed: () {
                  _swiperController.previous();
                },
                icon: R.image.icon_left.imageSize(size: 24),
              ),
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {
                  _swiperController.next();
                },
                icon: R.image.icon_right.imageSize(size: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
