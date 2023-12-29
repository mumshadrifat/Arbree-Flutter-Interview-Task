import 'controller/events_tab_container_controller.dart';
import 'models/events_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/events_page/events_page.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mumshad_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:mumshad_s_application5/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class EventsTabContainerPage extends StatelessWidget {
  EventsTabContainerController controller =
      Get.put(EventsTabContainerController(EventsTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(68),
                leadingWidth: 66,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgSearchGray900,
                    margin: getMargin(left: 28, top: 15, bottom: 15)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_home".tr),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgNotificationWhiteA700,
                      margin:
                          getMargin(left: 28, top: 15, right: 28, bottom: 15),
                      onTap: () {
                        onTapNotification();
                      })
                ],
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(26),
                          width: getHorizontalSize(409),
                          margin: getMargin(top: 37),
                          child: TabBar(
                              controller: controller.group41Controller,
                              labelColor: ColorConstant.gray900,
                              labelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                              unselectedLabelColor: ColorConstant.gray90066,
                              unselectedLabelStyle: TextStyle(
                                  fontSize: getFontSize(14),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700),
                              indicatorColor: ColorConstant.gray900,
                              tabs: [
                                Tab(
                                    child: Text("lbl_anytime".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_today".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_tomorrow".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_this_week".tr,
                                        overflow: TextOverflow.ellipsis)),
                                Tab(
                                    child: Text("lbl_this_month".tr,
                                        overflow: TextOverflow.ellipsis))
                              ])),
                      Container(
                          height: getVerticalSize(514),
                          child: TabBarView(
                              controller: controller.group41Controller,
                              children: [
                                EventsPage(),
                                EventsPage(),
                                EventsPage(),
                                EventsPage(),
                                EventsPage()
                              ]))
                    ]))));
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
