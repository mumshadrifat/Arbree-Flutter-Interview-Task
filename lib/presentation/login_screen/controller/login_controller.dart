import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController group2816Controller = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

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
    emailController.dispose();
    group2816Controller.dispose();
  }
}
