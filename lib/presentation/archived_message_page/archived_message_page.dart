import '../archived_message_page/widgets/listavatar_item_widget.dart';
import 'controller/archived_message_controller.dart';
import 'models/archived_message_model.dart';
import 'models/listavatar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ArchivedMessagePage extends StatelessWidget {
  ArchivedMessageController controller =
      Get.put(ArchivedMessageController(ArchivedMessageModel().obs));

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
                                return SizedBox(height: getVerticalSize(39));
                              },
                              itemCount: controller.archivedMessageModelObj
                                  .value.listavatarItemList.value.length,
                              itemBuilder: (context, index) {
                                ListavatarItemModel model = controller
                                    .archivedMessageModelObj
                                    .value
                                    .listavatarItemList
                                    .value[index];
                                return ListavatarItemWidget(model,
                                    onTapMessage: () {
                                  onTapMessage();
                                });
                              })))
                    ]))));
  }

  onTapMessage() {
    Get.toNamed(
      AppRoutes.groupChatScreen,
    );
  }
}
