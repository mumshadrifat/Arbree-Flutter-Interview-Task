import '../messages_page/widgets/messages_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/messages_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

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
                          padding: getPadding(left: 28, top: 31, right: 28),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28));
                              },
                              itemCount: controller.messagesModelObj.value
                                  .messagesItemList.value.length,
                              itemBuilder: (context, index) {
                                MessagesItemModel model = controller
                                    .messagesModelObj
                                    .value
                                    .messagesItemList
                                    .value[index];
                                return MessagesItemWidget(model,
                                    onTapMessage: () {
                                  onTapMessage();
                                });
                              })))
                    ]))));
  }

  onTapMessage() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
