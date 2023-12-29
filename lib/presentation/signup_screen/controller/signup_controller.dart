import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController group2820Controller = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController group2819Controller = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group2820Controller.dispose();
    emailController.dispose();
    group2819Controller.dispose();
  }
}
