import '../search_page/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';

class SearchPage extends StatelessWidget {
  SearchController controller = Get.put(SearchController(SearchModel().obs));

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
                        230,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        11,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        11,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .searchModelObj.value.searchItemList.value.length,
                    itemBuilder: (context, index) {
                      SearchItemModel model = controller
                          .searchModelObj.value.searchItemList.value[index];
                      return SearchItemWidget(
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
