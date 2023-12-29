import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/archived_message_tab_container_page/archived_message_tab_container_page.dart';
import 'package:mumshad_s_application5/presentation/events_tab_container_page/events_tab_container_page.dart';
import 'package:mumshad_s_application5/presentation/home_page/home_page.dart';
import 'package:mumshad_s_application5/presentation/new_post_page/new_post_page.dart';
import 'package:mumshad_s_application5/presentation/user_profile_tab_container_page/user_profile_tab_container_page.dart';
import 'package:mumshad_s_application5/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Calendar:
        return AppRoutes.eventsTabContainerPage;
      case BottomBarEnum.Grid:
        return AppRoutes.newPostPage;
      case BottomBarEnum.Mail:
        return AppRoutes.archivedMessageTabContainerPage;
      case BottomBarEnum.User:
        return AppRoutes.userProfileTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.eventsTabContainerPage:
        return EventsTabContainerPage();
      case AppRoutes.newPostPage:
        return NewPostPage();
      case AppRoutes.archivedMessageTabContainerPage:
        return ArchivedMessageTabContainerPage();
      case AppRoutes.userProfileTabContainerPage:
        return UserProfileTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
