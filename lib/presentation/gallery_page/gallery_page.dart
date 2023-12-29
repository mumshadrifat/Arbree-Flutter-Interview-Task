import '../gallery_page/widgets/gallery_item_widget.dart';
import 'controller/gallery_controller.dart';
import 'models/gallery_item_model.dart';
import 'models/gallery_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';

class GalleryPage extends StatelessWidget {
  GalleryController controller = Get.put(GalleryController(GalleryModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 30,
                  right: 28,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        100,
                      ),
                      crossAxisCount: 3,
                      mainAxisSpacing: getHorizontalSize(
                        11,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        11,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .galleryModelObj.value.galleryItemList.value.length,
                    itemBuilder: (context, index) {
                      GalleryItemModel model = controller
                          .galleryModelObj.value.galleryItemList.value[index];
                      return GalleryItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
