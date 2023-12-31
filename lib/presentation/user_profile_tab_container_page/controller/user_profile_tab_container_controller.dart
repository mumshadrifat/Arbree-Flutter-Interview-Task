import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/user_profile_tab_container_page/models/user_profile_tab_container_model.dart';
import 'package:flutter/material.dart';

import '../../login_screen/controller/login_controller.dart';

class UserProfileTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  UserProfileTabContainerController(this.userProfileTabContainerModelObj);
  LoginController _loginController=Get.find<LoginController>();
  Rx<UserProfileTabContainerModel> userProfileTabContainerModelObj;
   RxString userEmail="".obs;
   RxString userNamer="".obs;
  late TabController containobjController =
      Get.put(TabController(vsync: this, length: 4));

  RxString userName="Demo".obs;


  @override
  void onReady() {


    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void preloadedData() {
    print("-----");


  userEmail.value=_loginController.currentUserEmail;
  userName.value=_loginController.currentUserName!;



  }
}
