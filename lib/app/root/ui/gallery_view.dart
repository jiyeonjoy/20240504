import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/common/ui/title_view.dart';
import 'package:flutter_20240504/app/root/controller/root_page_controller.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
      child: Column(
        children: [
          const TitleView('GALLERY'),
          const SizedBox(height: 30),
          Container(
            constraints: const BoxConstraints(minWidth: 100, maxWidth: 500),
            child: GridView.builder(
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: RootPageController.to.galleryList.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: edgeInsets(all: 10),
                    child: RootPageController.to.galleryList[index].image(),
                  );
                }
            ),
          )
        ],
      )
    );
  }
}
