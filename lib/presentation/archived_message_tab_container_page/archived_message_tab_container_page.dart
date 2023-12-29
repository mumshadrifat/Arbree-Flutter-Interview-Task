import 'controller/archived_message_tab_container_controller.dart';
import 'models/archived_message_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/archived_message_page/archived_message_page.dart';
import 'package:mumshad_s_application5/presentation/messages_page/messages_page.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:mumshad_s_application5/widgets/app_bar/custom_app_bar.dart';

class ArchivedMessageTabContainerPage extends StatelessWidget {
  ArchivedMessageTabContainerController controller = Get.put(
      ArchivedMessageTabContainerController(
          ArchivedMessageTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            68,
          ),
          leadingWidth: 66,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgSearchGray900,
            margin: getMargin(
              left: 28,
              top: 15,
              bottom: 15,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_home".tr,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgNotificationWhiteA700,
              margin: getMargin(
                left: 28,
                top: 15,
                right: 28,
                bottom: 15,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  25,
                ),
                width: getHorizontalSize(
                  308,
                ),
                margin: getMargin(
                  top: 33,
                ),
                child: TabBar(
                  controller: controller.tabController,
                  labelColor: ColorConstant.gray900,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: ColorConstant.gray90066,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      14,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                  indicatorColor: ColorConstant.gray900,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_direct_messages".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_group_chat".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_archived".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  517,
                ),
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    MessagesPage(),
                    MessagesPage(),
                    ArchivedMessagePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
