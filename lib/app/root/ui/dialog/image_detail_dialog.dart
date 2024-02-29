import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
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
  late PageController _pageController;
  int _currentPage = 0;
  int _lastPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    _currentPage = widget.index;
    _lastPage = RootPageController.to.galleryList.length-1;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets(all: 30),
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: R.color.color_333333,
        elevation: 5,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ExpandablePageView.builder(
              controller: _pageController,
              itemCount: RootPageController.to.galleryList.length,
              itemBuilder: (context, index) {
                return Container(
                  color: R.color.black,
                  constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
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
              left: 10,
              child: IconButton(
                onPressed: () {
                  if (_currentPage == 0) {
                    _pageController.jumpToPage(_lastPage);
                  } else {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
                icon: R.image.icon_left.imageSize(size: 24),
              ),
            ),
            Positioned(
              right: 10,
              child: IconButton(
                onPressed: () {
                  if (_currentPage == _lastPage) {
                    _pageController.jumpToPage(0);
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
                icon: R.image.icon_right.imageSize(size: 24),
              ),
            ),
          ],
        )
      ),
    );
  }
}
