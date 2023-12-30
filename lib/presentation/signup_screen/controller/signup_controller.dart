import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../data/models/user_model/user.dart';

class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    //group2820Controller.dispose();
    //emailController.dispose();
    //group2819Controller.dispose();
  }

  Future<void> saveUserData() async {
    User user=User();

    user.firstName=nameController.text;
    user.lastName=nameController.text;
    user.gender="Male";
    user.email=emailController.text;
    user.number=passwordController.text;

    bool? dataExist;
    dataExist=await DataBaseHelper.instance.isDataExists(user.firstName!,user.firstName!);

    if(dataExist==0) {
      int? insId;
      insId = await DataBaseHelper.instance.insertUser(user);
    }
    else {
      print("SnackBar");
      //Get.snackbar("Login", "User Already Exist !!");
    }





  }

}
