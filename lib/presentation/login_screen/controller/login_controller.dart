import 'dart:ffi';

import 'package:get_storage/get_storage.dart';
import 'package:mumshad_s_application5/core/app_export.dart';
import 'package:mumshad_s_application5/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

import '../../../data/database_helper/databse_helper.dart';
import '../../../data/models/user_model/user.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController()..text='admin';

  TextEditingController passwordcontroller = TextEditingController()..text='1234';
  List<Map> userListMap = <Map>[];
  List<User> userList = <User>[];
  User userdata=User();
  String currentUserName='';
  String currentUserEmail='';

  RxList<Map> userMap = <Map>[].obs;
  Rx<LoginModel> loginModelObj = LoginModel().obs;
  RxInt userId = 0.obs;
  GetStorage box = GetStorage();
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
    User user = User();
    int? dataExist;

    user.email = emailController.text;
    user.number = passwordcontroller.text;

    dataExist =
        await DataBaseHelper.instance.isDataExists(user.email!, user.email!);

    if (dataExist == 0) {
      Get.snackbar('Warning', "Wrong Email/Password",
          snackPosition: SnackPosition.BOTTOM);
    } else {

    // retrieve query response
      userListMap=await DataBaseHelper.instance
          .userById(user.email!);


      if (userListMap != null) {
        // Accessing data from the list of maps
        for (var map in userListMap) {

          currentUserName=map['firstname'];
          currentUserEmail=map['email'];
          print(currentUserEmail);
          print(currentUserName);



        }
      }

   //
   //    userListMap?.forEach((row) {
   //      userList?.add(User.fromJson(row));
   //      print(row);
   //    });
   //    int? id=userList[0].id;
   //    print("id---$id");
   //    String? firstName=userList[0].firstName;
   //    print("first name ---$firstName");
   //    String? lastname=userList[0].lastName;
   //    print("last name ---$lastname");
   //    String? number=userList[0].number;
   //    print("number ---$number");


      Get.toNamed(
        AppRoutes.homeContainerScreen,
      );


    }
  }
}
