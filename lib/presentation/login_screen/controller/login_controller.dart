import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../data/models/user_model/user.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();
  RxList<User>userList=<User>[].obs;
  RxList<Map>userMap=<Map>[].obs;
  Rx<LoginModel> loginModelObj = LoginModel().obs;
  RxInt userId=0.obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
   // Future.delayed(const Duration(milliseconds: 3000), () {

   // });
  }

  @override
  void onClose() {
    super.onClose();
   // emailController.dispose();
   // passwordcontroller.dispose();
  }

  Future<void> loginWithUser() async {
    User user=User();
    user.email=emailController.text;
    user.number=passwordcontroller.text;

    int? dataExist;
    dataExist = await DataBaseHelper.instance
        .isDataExists(user.email!, user.email!);
    print("dataExist>$dataExist");
    if(dataExist==0){

      Get.snackbar('Warning', "Wrong Email/Password",snackPosition: SnackPosition.BOTTOM);
    }
    else {


      userMap.value = (await DataBaseHelper.instance
          .userById(user.email!)).cast<Map>();
      print("---");
      userId.value=userMap[0].values as int;
      print(userId.value.toString());
      Get.toNamed(
        AppRoutes.homeContainerScreen,
      );
    }
  }
}
